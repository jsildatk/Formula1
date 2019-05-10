<?xml version="1.0" encoding="UTF-8"?>
<xs:stylesheet version="1.0" xmlns:xs="http://www.w3.org/1999/XSL/Transform">
    <xs:template match="/">
        <html>
        <head>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
            <style>
                table {
                    border: 2px solid black;
                    border-collapse: collapse;
                }
                td, th, tr {
                    border: 1px solid black;
                    text-align: center;
                }
                p {
                    color: green;
                    font-weight: bold;
                }
            </style>
        </head>
        <body>
            <div class="container-fluid">
                <div class="row">
                    <div class = "col-12 p-0">
                        <div class = "jumbotron min-vh-100 text-center d-flex flex-column">
                            <div id="engines">
                                <p>ENGINES:</p>
                                <table class="table table-hover table-striped">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>ID</th>
                                        <th>Manufacter</th>
                                        <th colspan="4">ICE</th>
                                        <th colspan="4">MGU-K</th>
                                        <th colspan="2">MGU-H</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <xs:for-each select="formula1/engines/engine">
                                            <tr>
                                                <xs:if test="manufacter='Mercedes'">
                                                    <td style="color: #00CED1;"><xs:value-of select="@engine_id" /></td>
                                                    <td style="color: #00CED1;"><xs:value-of select="manufacter" /></td>
                                                </xs:if>
                                                <xs:if test="manufacter='Ferrari'">
                                                    <td style="color: red;"><xs:value-of select="@engine_id" /></td>
                                                    <td style="color: red;"><xs:value-of select="manufacter" /></td>
                                                </xs:if>
                                                <xs:if test="manufacter='Honda'">
                                                    <td style="color: blue;"><xs:value-of select="@engine_id" /></td>
                                                    <td style="color: blue;"><xs:value-of select="manufacter" /></td>
                                                </xs:if>
                                                <xs:if test="manufacter='Renault'">
                                                    <td style="color: yellow;"><xs:value-of select="@engine_id" /></td>
                                                    <td style="color: yellow;"><xs:value-of select="manufacter" /></td>
                                                </xs:if>
                                                <td><xs:value-of select="ice/displacement" /></td>
                                                <td><xs:value-of select="ice/cylinders" />&#160;cylinders</td>
                                                <td><xs:value-of select="ice/horse_power" />&#160;hp</td>
                                                <td><xs:value-of select="ice/max_rpm" />&#160;rpm</td>
                                                <td><xs:value-of select="hybrid/mgu-k/power" />&#160;<xs:value-of select="hybrid/mgu-k/power/@energy_unit" />&#160;power</td>
                                                <td><xs:value-of select="hybrid/mgu-k/max_rpm" />&#160;rpm</td>
                                                <td><xs:value-of select="hybrid/mgu-k/recovered_energy" />&#160;<xs:value-of select="hybrid/mgu-k/recovered_energy/@energy_unit" />&#160;recovery</td>
                                                <td><xs:value-of select="hybrid/mgu-k/released_energy" />&#160;<xs:value-of select="hybrid/mgu-k/released_energy/@energy_unit" />&#160;release</td>
                                                <td><xs:value-of select="hybrid/mgu-h/max_rpm" />&#160;rpm</td>
                                                <td><xs:value-of select="hybrid/mgu-h/recovered_energy" />&#160;recovery</td>
                                            </tr>
                                        </xs:for-each>
                                    </tbody>
                                </table>
                            </div>
                            <div id = "teams">
                                <p>TEAMS:</p>
                                <table class="table table-hover table-striped">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Principal</th>
                                        <th>Country</th>
                                        <th>Budget</th>
                                        <th>Driver titles</th>
                                        <th>Constructor titles</th>
                                        <th colspan="3">Staff</th>
                                        <th colspan="2">Car</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <xs:for-each select="formula1/teams/team">
                                            <tr>
                                                <xs:if test="@id='MER'">
                                                    <td style="color: #00CED1;"><xs:value-of select="@id" /></td>
                                                    <td style="color: #00CED1;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='FER'">
                                                    <td style="color: red;"><xs:value-of select="@id" /></td>
                                                    <td style="color: red;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='RBR'">
                                                    <td style="color: blue;"><xs:value-of select="@id" /></td>
                                                    <td style="color: blue;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='REN'">
                                                    <td style="color: yellow;"><xs:value-of select="@id" /></td>
                                                    <td style="color: yellow;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='HAA'">
                                                    <td style="color: brown;"><xs:value-of select="@id" /></td>
                                                    <td style="color: brown;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='MCL'">
                                                    <td style="color: orange;"><xs:value-of select="@id" /></td>
                                                    <td style="color: orange;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='SRP'">
                                                    <td style="color: pink;"><xs:value-of select="@id" /></td>
                                                    <td style="color: pink;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='ARR'">
                                                    <td style="color: #8B0000;"><xs:value-of select="@id" /></td>
                                                    <td style="color: #8B0000;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='TRH'">
                                                    <td style="color: navy;"><xs:value-of select="@id" /></td>
                                                    <td style="color: navy;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <xs:if test="@id='RWR'">
                                                    <td style="color: white;"><xs:value-of select="@id" /></td>
                                                    <td style="color: white;"><xs:value-of select="name" /></td>
                                                </xs:if>
                                                <td><xs:value-of select="principal" /></td>
                                                <td><xs:value-of select="nationality" />&#160;(<xs:value-of select="nationality/@code" />)</td>
                                                <td><xs:value-of select="budget" />&#160;<xs:value-of select="budget/@unit" />&#160;<xs:value-of select="budget/@currency" /></td>
                                                <td><xs:value-of select="driver_titles" /></td>
                                                <td><xs:value-of select="constructor_titles" /></td>
                                                <td><xs:value-of select="staff/amount" />&#160;people</td>
                                                <td><xs:value-of select="staff/technical_director" /></td>
                                                <td><xs:value-of select="staff/strategist" /></td>
                                                <td><xs:value-of select="car/name" /></td>
                                                <xs:if test="car/car_engine/@refid='E_MER'">
                                                    <td style="color: #00CED1;"><xs:value-of select="car/car_engine/@refid" />&#160;engine</td>
                                                </xs:if>
                                                <xs:if test="car/car_engine/@refid='E_FER'">
                                                    <td style="color: red;"><xs:value-of select="car/car_engine/@refid" />&#160;engine</td>
                                                </xs:if>
                                                <xs:if test="car/car_engine/@refid='E_HON'">
                                                    <td style="color: blue;"><xs:value-of select="car/car_engine/@refid" />&#160;engine</td>
                                                </xs:if>
                                                <xs:if test="car/car_engine/@refid='E_REN'">
                                                    <td style="color: yellow;"><xs:value-of select="car/car_engine/@refid" />&#160;engine</td>
                                                </xs:if>
                                            </tr>
                                        </xs:for-each>
                                    </tbody>
                                </table>
                            </div>
                            <div id="drivers">
                                <p>DRIVERS:</p>
                                <table class="table table-hover table-striped">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>ID</th>
                                        <th>Team</th>
                                        <th>First name</th>
                                        <th>Last name</th>
                                        <th>Nationality</th>
                                        <th>Championship titles</th>
                                        <th>Poles</th>
                                        <th>Race wins</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <xs:for-each select="formula1/drivers/driver">
                                            <tr>
                                                <xs:if test="driver_team/@refid='MER'">
                                                    <td style="color: #00CED1;"><xs:value-of select="@id" /></td>
                                                    <td style="color: #00CED1;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='FER'">
                                                    <td style="color: red;"><xs:value-of select="@id" /></td>
                                                    <td style="color: red;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='RBR'">
                                                    <td style="color: blue;"><xs:value-of select="@id" /></td>
                                                    <td style="color: blue;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='REN'">
                                                    <td style="color: yellow;"><xs:value-of select="@id" /></td>
                                                    <td style="color: yellow;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='HAA'">
                                                    <td style="color: brown;"><xs:value-of select="@id" /></td>
                                                    <td style="color: brown;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='MCL'">
                                                    <td style="color: orange;"><xs:value-of select="@id" /></td>
                                                    <td style="color: orange;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='SRP'">
                                                    <td style="color: pink;"><xs:value-of select="@id" /></td>
                                                    <td style="color: pink;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='ARR'">
                                                    <td style="color: #8B0000;"><xs:value-of select="@id" /></td>
                                                    <td style="color: #8B0000;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='TRH'">
                                                    <td style="color: navy;"><xs:value-of select="@id" /></td>
                                                    <td style="color: navy;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <xs:if test="driver_team/@refid='RWR'">
                                                    <td style="color: white;"><xs:value-of select="@id" /></td>
                                                    <td style="color: white;"><xs:value-of select="driver_team/@refid" /></td>
                                                </xs:if>
                                                <td><xs:value-of select="first_name" /></td>
                                                <td><xs:value-of select="last_name" /></td>
                                                <td><xs:value-of select="nationality" />&#160;(<xs:value-of select="nationality/@code" />)</td>
                                                <td><xs:value-of select="championship_titles" /></td>
                                                <td><xs:value-of select="poles" /></td>
                                                <td><xs:value-of select="race_wins" /></td>
                                            </tr>
                                        </xs:for-each>
                                    </tbody>
                                </table>
                            </div>
                            <div id="circuits">
                                <p>CIRCUITS:</p>
                                <table class="table table-hover table-striped">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>Direction</th>
                                        <th>Length</th>
                                        <th>Turns</th>
                                        <th colspan="2">Localization</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <xs:for-each select="formula1/circuits/circuit">
                                        <tr>
                                            <td><xs:value-of select="@id" /></td>
                                            <td><xs:value-of select="name" /></td>
                                            <td><xs:value-of select="type" /></td>
                                            <td><xs:value-of select="direction" /></td>
                                            <td><xs:value-of select="length" />&#160;<xs:value-of select="length/@unit" /></td>
                                            <td><xs:value-of select="turns" /></td>
                                            <td><xs:value-of select="localization/city" /></td>
                                            <td><xs:value-of select="localization/country" />&#160;(<xs:value-of select="localization/country/@code" />)</td>
                                        </tr>
                                        </xs:for-each>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        </html>
    </xs:template>
</xs:stylesheet>