import React, { Component } from 'react';
import HeaderWithService from "../custom-components/HeaderWithService";
import Footer from '../components/Footer';

class SolutionPage extends Component {


    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="Task assignment" />
                <div className="govuk-width-container tableoverflowXAxis ">
                    <label className="govuk-label govuk-error-colour">Solving</label>
                    <table className="govuk-table">
                        <thead className="govuk-table__head">
                            <tr className="govuk-table__row">
                                <th className="govuk-table__header" scope="col">Team member</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-09</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-10</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-11</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-12</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-13</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-14</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-15</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-16</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-17</th>
                                <th className="govuk-table__header govuk-table__header--numeric" scope="col">2019-07-18</th>
                            </tr>
                        </thead>
                        <tbody className="govuk-table__body">
                            <tr className="govuk-table__row">
                                <th className="govuk-table__header" scope="row">
                                    <div className="row">
                                        <div className="col-1">
                                            <div className="skillColor"></div>
                                        </div>
                                        <div className="col-1">
                                            <div className="skillColor1"></div>
                                        </div>
                                        <div className="col-1">
                                            <div className="skillColor2"></div>
                                        </div>
                                        <div className="col">
                                            Murshid
                                        </div>
                                    </div>
                                </th>
                                <td className="govuk-table__cell govuk-table__cell--numeric " colSpan="2">
                                    <div className="card-body text-dark card border-dark mb-10 cardStyle" >
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor1"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s">  Expand Tax</h5>
                                            </div>
                                        </div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-10</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 0</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>
                                        <div className="row">
                                            <div className="col-auto">
                                                <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                            </div>
                                        </div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                            </tr>
                            <tr className="govuk-table__row">
                                <th className="govuk-table__header" scope="row">
                                    <div className="row">
                                        <div className="col-1">
                                            <div className="skillColor"></div>
                                        </div>
                                        <div className="col-1">
                                            <div className="skillColor3"></div>
                                        </div>
                                        <div className="col-1">
                                            <div className="skillColor4"></div>
                                        </div>
                                        <div className="col">
                                            Hasmath
                                        </div>
                                    </div>
                                </th>
                                <td className="govuk-table__cell govuk-table__cell--numeric " >
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor4"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s">
                                                    Software Development
                                            </h5>
                                            </div>
                                        </div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-08</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 0</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/minor-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>
                                        <div className="row">
                                            <div className="col">
                                                <img className="imageSize" src="/assets/images/other/clock.png"></img>
                                            </div>
                                            <div className="col">
                                                <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"> 2019-07-09</div>
                                            </div>
                                        </div>                
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 1</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric " >
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor4"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s">
                                                    Software Development
                                            </h5>
                                            </div>
                                        </div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-08</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 0</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Marketing & Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric " >
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor4"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s">
                                                    Software Development
                                            </h5>
                                            </div>
                                        </div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-08</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 0</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric " >
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor4"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s">
                                                    Software Development
                                            </h5>
                                            </div>
                                        </div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-08</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 0</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/minor-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 1</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Marketing & Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor2"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Marketing & Sales</h5>
                                            </div>
                                        </div>

                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 2</div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                        <div className="row">
                                            <div className="col-1">
                                                <div className="skillColor"></div>
                                            </div>
                                            <div className="col-1">
                                                <img className="imageSize" src="/assets/images/skills/minor-priority.png"></img>
                                            </div>
                                            <div className="col">
                                                <h5 className="card-title govuk-body-s"> Improve Sales</h5>
                                            </div>
                                        </div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/leave.png"></img>: 1</div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <Footer />
            </div>
        );
    }
}

export default SolutionPage;