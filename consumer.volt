<form id="_form" name="proposal_form" action="{{ static_url('proposals/add' ) }}" method="post">
    <input type="hidden" name="quote_id" value="{{ quote_id }}" />
    <input type="hidden" name="username" value="{{ user.auth_username }}" />
    <input type="hidden" id="address_count" name="addresses" value="1" />
    <input type="hidden" id="employment_count" name="jobs" value="1" />

    <div id="submit_box">
        <p id="submit_required">* Required Fields</p>
        <p id="submit_optional">† At Least One Required</p>
        <button value="add" id="submit_button">Submit</button>
        <ul>
            <li><button type="button" id="add_address">Add Address</button></li>
            <li><button type="button" disabled id="remove_address">Remove Address</button></li>
        </ul>
        <ul>
            <li><button type="button" id="add_employment">Add Employment</button></li>
            <li><button type="button" disabled id="remove_employment">Remove Employment</button></li>
        </ul>
    </div>
    <article class="article_full_width">
        <fieldset>
            <legend>Personal Details</legend>
            <ul>
                <li>
                    <label for="consumer_pre_name">Title:</label>
                    <input type="text" name="consumer_pre_name" value="{{ quote.qu_title }}" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="consumer_first_name">First Name:</label>
                    <input class="required" required type="text" name="consumer_first_name" value="{{ quote.qu_christian }}" />
                </li>
                <li>
                    <label for="consumer_middle_names">Middle Names:</label>
                    <input type="text" name="consumer_middle_names" value="{{ quote.qu_middle_name }}" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="consumer_surname">Surname:</label>
                    <input class="required" required type="text" name="consumer_surname" value="{{ quote.qu_surname }}" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="consumer_dob">Date of Birth:</label>
                    <input type="date" pattern="{{ date_regex }}"  name="consumer_dob" value="" placeholder="DD-MM-YYYY"  />
                </li>
                <li>
                    <label for="consumer_marital_status">Marital Status:</label>
                    <select name="consumer_marital_status">
                        <option selected value=""></option>
                        <option value="SINGLE">SINGLE</option>
                        <option value="MARRIED">MARRIED</option>
                        <option value="SEPARATED">SEPARATED</option>
                        <option value="DIVORCED">DIVORCED</option>
                        <option value="OTHER">OTHER</option>
                    </select>
                </li>
                <li>
                    <label for="consumer_dependents">Dependents:</label>
                    <input type="number" min="0" name="consumer_dependents" value="" />
                </li>
            </ul>
            <ul>
                <li>
                    <span class="choice_span">†</span>
                    <label for="consumer_telephone_home">Telephone Home:</label>
                    <input type="tel" name="consumer_telephone_home" value="{{ quote.qu_tel_no }}" />
                </li>
                <li>
                    <span class="choice_span">†</span>
                    <label for="consumer_telephone_mobile">Telephone Mobile:</label>
                    <input type="tel" name="consumer_telephone_mobile" value="{{ quote.qu_mob_no }}" />
                </li>
                <li>
                    <label for="consumer_email">Email:</label>
                    <input type="email" name="consumer_email" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="consumer_bank_name">Bank Name:</label>
                    <input class="required" required type="text" name="consumer_bank_name" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="consumer_account_name">Account Name:</label>
                    <input class="required" required type="text" name="consumer_account_name" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="consumer_account_number">Account Number:</label>
                    <input id="account_number" class="number_nospin required" required type="number" min="1" max="99999999" name="consumer_account_number" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="consumer_sort_code">Sort Code:</label>
                    <input id="sort_code" class="required" required type="text" pattern="{{ sortcode_regex }}" name="consumer_sort_code" value="" />
                </li>
            </ul>
        </fieldset>
    </article>
    <article class="article_half_width">
        <fieldset>
            <legend>Current Address</legend>
            <ul>
                <li>
                    <span class="choice_span">†</span>
                    <label for="address_1_house_number">House Number:</label>
                    <input type="text" name="address_1_house_number" value="{{ quote.qu_addr1 }}" />
                </li>
                <li>
                    <span class="choice_span">†</span>
                    <label for="address_1_house_name">House Name:</label>
                    <input type="text" name="address_1_house_name" value="{{ quote.qu_addr2 }}" />
                </li>
                <li>
                    <label for="address_1_street">Street:</label>
                    <input type="text" name="address_1_street" value="{{ quote.qu_addr3 }}" />
                </li>
                <li>
                    <label for="address_1_district">District:</label>
                    <input type="text" name="address_1_district" value="{{ quote.qu_addr4 }}" />
                </li>
                <li>
                    <label for="address_1_town">Town:</label>
                    <input type="text" name="address_1_town" value="{{ quote.qu_addr5 }}" />
                </li>
                <li>
                    <label for="address_1_county">County:</label>
                    <input type="text" name="address_1_county" value="{{ quote.qu_addr6 }}" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_1_postcode">Postcode:</label>
                    <input class="postcode required" required type="text" pattern="{{ postcode_regex }}" name="address_1_postcode" value="{{ quote.qu_postcode }}" />
                </li>
                <li>
                    <label for="address_1_residential">Residential:</label>
                    <select name="address_1_residential">
                        <option selected value=""></option>
                        <option value="OWNER">OWNER</option>
                        <option value="PARENTS">PARENTS</option>
                        <option value="TENANT">PRIVATE TENANT</option>
                        <option value="COUNCIL_TENANT">COUNCIL TENANT</option>
                        <option value="OTHER">OTHER</option>
                    </select>
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_1_years">Years Lived:</label>
                    <input class="required" required type="number" min="0" max="99" name="address_1_years" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_1_months">Months Lived:</label>
                    <input class="required" required type="number" min="0" max="11" name="address_1_months" value="" />
                </li>
            </ul>
        </fieldset>
        <fieldset id="address_fieldset_2" hidden>
            <legend>Previous Address 1</legend>
            <ul>
                <li>
                    <span class="choice_span">†</span>
                    <label for="address_2_house_number">House Number:</label>
                    <input type="text" name="address_2_house_number" value="" />
                </li>
                <li>
                    <span class="choice_span">†</span>
                    <label for="address_2_house_name">House Name:</label>
                    <input type="text" name="address_2_house_name" value="" />
                </li>
                <li>
                    <label for="address_2_street">Street:</label>
                    <input type="text" name="address_2_street" value="" />
                </li>
                <li>
                    <label for="address_2_district">District:</label>
                    <input type="text" name="address_2_district" value="" />
                </li>
                <li>
                    <label for="address_2_town">Town:</label>
                    <input type="text" name="address_2_town" value="" />
                </li>
                <li>
                    <label for="address_2_county">County:</label>
                    <input type="text" name="address_2_county" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_2_postcode">Postcode:</label>
                    <input class="postcode" class="address_require_2" type="text" pattern="{{ postcode_regex }}" name="address_2_postcode" value="" />
                </li>
                <li>
                    <label for="address_2_residential">Residential:</label>
                    <select name="address_2_residential">
                        <option selected value=""></option>
                        <option value="OWNER">OWNER</option>
                        <option value="PARENTS">PARENTS</option>
                        <option value="TENANT">PRIVATE TENANT</option>
                        <option value="COUNCIL_TENANT">COUNCIL TENANT</option>
                        <option value="OTHER">OTHER</option>
                    </select>
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_2_years">Years Lived:</label>
                    <input class="address_require_2" type="number" min="0" max="99" name="address_2_years" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_2_months">Months Lived:</label>
                    <input class="address_require_2" type="number" min="0" max="11" name="address_2_months" value="" />
                </li>
            </ul>
        </fieldset>
        <fieldset id="address_fieldset_3" hidden>
            <legend>Previous Address 2</legend>
            <ul>
                <li>
                    <span class="choice_span">†</span>
                    <label for="address_3_house_number">House Number:</label>
                    <input type="text" name="address_3_house_number" value="" />
                </li>
                <li>
                    <span class="choice_span">†</span>
                    <label for="address_3_house_name">House Name:</label>
                    <input type="text" name="address_3_house_name" value="" />
                </li>
                <li>
                    <label for="address_3_street">Street:</label>
                    <input type="text" name="address_3_street" value="" />
                </li>
                <li>
                    <label for="address_3_district">District:</label>
                    <input type="text" name="address_3_district" value="" />
                </li>
                <li>
                    <label for="address_3_town">Town:</label>
                    <input type="text" name="address_3_town" value="" />
                </li>
                <li>
                    <label for="address_3_county">County:</label>
                    <input type="text" name="address_3_county" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_3_postcode">Postcode:</label>
                    <input class="postcode" class="address_require_3" type="text" pattern="{{ postcode_regex }}" name="address_3_postcode" value="" />
                </li>
                <li>
                    <label for="address_3_residential">Residential:</label>
                    <select name="address_3_residential">
                        <option selected value=""></option>
                        <option value="OWNER">OWNER</option>
                        <option value="PARENTS">PARENTS</option>
                        <option value="TENANT">PRIVATE TENANT</option>
                        <option value="COUNCIL_TENANT">COUNCIL TENANT</option>
                        <option value="OTHER">OTHER</option>
                    </select>
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_3_years">Years Lived:</label>
                    <input class="address_require_3" type="number" min="0" max="99" name="address_3_years" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="address_3_months">Months Lived:</label>
                    <input class="address_require_3" type="number" min="0" max="11" name="address_3_months" value="" />
                </li>
            </ul>
        </fieldset>
        <fieldset>
            <legend>Additional Information</legend>
            <textarea id="additional_info" form="_form" name="additional_information">{{ quote.qu_notes|nl2br }}</textarea>
        </fieldset>
    </article>
    <article class="article_half_width">
        <fieldset>
            <legend>Current Employment</legend>
            <ul>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_1_occupation">Occupation:</label>
                    <input class="required" required type="text" name="emp_1_occupation" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_1_company">Company:</label>
                    <input class="required" required type="text" name="emp_1_company" value="" />
                </li>
                <li>
                    <label for="emp_1_sector">Sector:</label>
                    <input type="text" name="emp_1_sector" value="" />
                </li>
                <li>
                    <label for="emp_1_building_number">Building Number:</label>
                    <input type="text" name="emp_1_building_number" value="" />
                </li>
                <li>
                    <label for="emp_1_building_name">Building Name:</label>
                    <input type="text" name="emp_1_building_name" value="" />
                </li>
                <li>
                    <label for="emp_1_street">Street:</label>
                    <input type="text" name="emp_1_street" value="" />
                </li>
                <li>
                    <label for="emp_1_district">District:</label>
                    <input type="text" name="emp_1_district" value="" />
                </li>
                <li>
                    <label for="emp_1_town">Town:</label>
                    <input type="text" name="emp_1_town" value="" />
                </li>
                <li>
                    <label for="emp_1_county">County:</label>
                    <input type="text" name="emp_1_county" value="" />
                </li>
                <li>
                    <label for="emp_1_postcode">Postcode:</label>
                    <input class="postcode" type="text" pattern="{{ postcode_regex }}" name="emp_1_postcode" value="" />
                </li>
                <li>
                    <label for="emp_1_telephone">Telephone:</label>
                    <input type="tel" name="emp_1_telephone" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_1_years">Years Worked:</label>
                    <input class="required" required type="number" min="0" max="99" name="emp_1_years" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_1_months">Months Worked:</label>
                    <input class="required" required type="number" min="0" max="11" name="emp_1_months" value="" />
                </li>
            </ul>
        </fieldset>
        <fieldset id="employment_fieldset_2" hidden>
            <legend>Previous Employment 1</legend>
            <ul>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_2_occupation">Occupation:</label>
                    <input class="employment_require_2" type="text" name="emp_2_occupation" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_2_company">Company:</label>
                    <input class="employment_require_2" type="text" name="emp_2_company" value="" />
                </li>
                <li>
                    <label for="emp_2_sector">Sector:</label>
                    <input type="text" name="emp_2_sector" value="" />
                </li>
                <li>
                    <label for="emp_2_building_number">Building Number:</label>
                    <input type="text" name="emp_2_building_number" value="" />
                </li>
                <li>
                    <label for="emp_2_building_name">Building Name:</label>
                    <input type="text" name="emp_2_building_name" value="" />
                </li>
                <li>
                    <label for="emp_2_street">Street:</label>
                    <input type="text" name="emp_2_street" value="" />
                </li>
                <li>
                    <label for="emp_2_district">District:</label>
                    <input type="text" name="emp_2_district" value="" />
                </li>
                <li>
                    <label for="emp_2_town">Town:</label>
                    <input type="text" name="emp_2_town" value="" />
                </li>
                <li>
                    <label for="emp_2_county">County:</label>
                    <input type="text" name="emp_2_county" value="" />
                </li>
                <li>
                    <label for="emp_2_postcode">Postcode:</label>
                    <input class="postcode" type="text" pattern="{{ postcode_regex }}" name="emp_2_postcode" value="" />
                </li>
                <li>
                    <label for="emp_2_telephone">Telephone:</label>
                    <input type="tel" name="emp_2_telephone" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_2_years">Years Worked:</label>
                    <input class="employment_require_2" type="number" min="0" max="99" name="emp_2_years" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_2_months">Months Worked:</label>
                    <input class="employment_require_2" type="number" min="0" max="11" name="emp_2_months" value="" />
                </li>
            </ul>
        </fieldset>
        <fieldset id="employment_fieldset_3" hidden>
            <legend>Previous Employment 2</legend>
            <ul>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_3_occupation">Occupation:</label>
                    <input class="employment_require_3" type="text" name="emp_3_occupation" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_3_company">Company:</label>
                    <input class="employment_require_3" type="text" name="emp_3_company" value="" />
                </li>
                <li>
                    <label for="emp_3_sector">Sector:</label>
                    <input type="text" name="emp_3_sector" value="" />
                </li>
                <li>
                    <label for="emp_3_building_number">Building Number:</label>
                    <input type="text" name="emp_3_building_number" value="" />
                </li>
                <li>
                    <label for="emp_3_building_name">Building Name:</label>
                    <input type="text" name="emp_3_building_name" value="" />
                </li>
                <li>
                    <label for="emp_3_street">Street:</label>
                    <input type="text" name="emp_3_street" value="" />
                </li>
                <li>
                    <label for="emp_3_district">District:</label>
                    <input type="text" name="emp_3_district" value="" />
                </li>
                <li>
                    <label for="emp_3_town">Town:</label>
                    <input type="text" name="emp_3_town" value="" />
                </li>
                <li>
                    <label for="emp_3_county">County:</label>
                    <input type="text" name="emp_3_county" value="" />
                </li>
                <li>
                    <label for="emp_3_postcode">Postcode:</label>
                    <input class="postcode" type="text" pattern="{{ postcode_regex }}" name="emp_3_postcode" value="" />
                </li>
                <li>
                    <label for="emp_3_telephone">Telephone:</label>
                    <input type="tel" name="emp_3_telephone" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_3_years">Years Worked:</label>
                    <input class="employment_require_3" type="number" min="0" max="99" name="emp_3_years" value="" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="emp_3_months">Months Worked:</label>
                    <input class="employment_require_3" type="number" min="0" max="11" name="emp_3_months" value="" />
                </li>
            </ul>
        </fieldset>
    </article>
    <article class="article_full_width">
        <fieldset>
            <legend>Vehicle Details</legend>
            <ul>
                <li>
                    <span class="required_span">*</span>
                    <label for="vehicle_condition">Condition:</label>
                    <div class="radio_conditional">
                        <input {{ is_new }} class="required" required type="radio" name="vehicle_condition" value="1" />
                        <p>NEW</p>
                        <input {{ is_used }} type="radio" name="vehicle_condition" value="0" />
                        <p>USED</p>
                    </div>
                </li>
                <li>
                    <span class="required_span display_if_used" hidden>*</span>
                    <label for="vehicle_reg_number">Registration №:</label>
                    <input class="required_if_used" type="text" name="vehicle_reg_number" value="{{ quote.qu_veh_reg }}" />
                </li>
                <li id="date_box">
                    <span class="required_span display_if_used" hidden>*</span>
                    <label for="vehicle_reg_date">Registration Date:</label>
                    <div id="registration_box">
                        <input id="registration_is_known" type="checkbox" name="registration_known" value="1" />
                        <p>UNKNOWN</p>
                        <input id="registration_date"  type="date" pattern="{{ date_regex }}" name="vehicle_reg_date" value="" placeholder="YYYY-MM-DD" />
                    </div>
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="vehicle_make">Make:</label>
                    <input class="required" required type="text" name="vehicle_make" value="{{ quote.qu_make }}" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="vehicle_model">Model:</label>
                    <input class="required" required type="text" name="vehicle_model" value="{{ quote.qu_model }}" />
                </li>
                <li>
                    <span class="required_span display_if_used" hidden>*</span>
                    <label for="vehicle_mileage">Mileage:</label>
                    <input class="required_if_used number_nospin" type="number" name="vehicle_mileage" value="" />
                </li>
                <li>
                    <span class="required_span display_if_used" hidden>*</span>
                    <label for="vehicle_colour">Colour:</label>
                    <input class="required_if_used" type="text" name="vehicle_colour" value="" />
                </li>
            </ul>
            <ul>
                <li>
                    <label for="vehicle_dealer">Dealer:</label>
                    <select id="dealer_select" {{ is_disabled }} name="vehicle_dealer" value="">
                        {% for d in dealers %}
                            <option name="vehicle_dealer" value="{{ d.de_id }}"
                                {% if d.de_id == quote.qu_dealer %}
                                    selected
                                {% endif %}
                            >{{ d.de_name }}</option>
                        {% endfor %}
                    </select>
                </li>
                <li>
                    <label for="vehicle_salesperson">Salesperson:</label>
                    <input {{ is_readonly }} type="text" name="vehicle_salesperson" value="{{ user.name }}" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="vehicle_price">Cash price:</label>
                    <input required {{ is_readonly }} class="currency required" type="text" name="vehicle_price" value="{{ quote.qu_cash_price }}" placeholder="£" />
                </li>
                <li>
                    <span class="choice_span">†</span>
                    <label for="vehicle_part_ex">Part Ex:</label>
                    <input {{ is_readonly }} class="currency" type="text" name="vehicle_part_ex" value="{{ quote.qu_pt_ex }}" placeholder="£" />
                </li>
                <li>
                    <span class="choice_span">†</span>
                    <label for="vehicle_deposit">Cash Deposit:</label>
                    <input {{ is_readonly }} class="currency" type="text" name="vehicle_deposit" value="{{ quote.qu_cash_dep }}" placeholder="£" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="vehicle_balance">Balance to Finance:</label>
                    <input {{ is_readonly }} required class="currency required" type="text" name="vehicle_balance" value="{{ quote.bal_to_finance }}" placeholder="£" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="vehicle_rate">Flat Rate:</label>
                    <input {{ is_readonly }} required class="required" type="text" name="vehicle_rate" value="{{ quote.rate }}" />
                </li>
                <li>
                    <span class="required_span">*</span>
                    <label for="vehicle_term">Term:</label>
                    <input {{ is_readonly }} required class="required" type="text" name="vehicle_term" value="{{ quote.qu_term }}" />
                </li>
            </ul>
        </fieldset>
    </article>
</form>
<script type="text/javascript" src="{{ static_url('public/js/quote_transition_form.js') }}"></script>
<script type="text/javascript" src="{{ static_url('public/js/consumer.js') }}"></script>
