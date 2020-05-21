import React, { Component } from 'react';
import HeaderWithService from "../custom-components/HeaderWithService";
import Footer from '../components/Footer';

class SolutionVerticalPage extends Component {

    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="Task assignment" />
                <div className="withvalue leftpadding tableoverflowXAxis ">
                    <label className="govuk-label govuk-error-colour">Solving</label>
                    <table className="govuk-table">
                        <thead className="govuk-table__head">
                            <tr className="govuk-table__row">
                                <th className="govuk-table__header table-vertical table-vertical-top " scope="col">Team member</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-09</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-10</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-11</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-12</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-13</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-14</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-15</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-16</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-17</th>
                                <th className="govuk-table__header govuk-table__header--numeric table-vertical table-vertical-top govuk-!-font-size-14" scope="col">2019-07-18</th>
                            </tr>
                        </thead>
                        <tbody className="govuk-table__body table-vertical">
                            <tr className="govuk-table__row table-vertical">
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
                                    <div className="row">
                                        <div className="col-1">
                                            <img className="imageSizeSM" src="/assets/images/other/star.png"></img>
                                        </div>
                                        <div className="col-1">
                                            <img className="imageSizeSM" src="/assets/images/other/star.png"></img>
                                        </div>
                                        <div className="col-1">
                                            <img className="imageSizeSM" src="/assets/images/other/star.png"></img>
                                        </div>
                                    </div>
                                </th>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="2">
                                    <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-10 cardStyle" >
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor1"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">  Expand Tax</h5>
                                                    </div>
                                                </div>
                                                <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-10</div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="1">
                                    <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14">
                                                        <img className="imageSizeSM" src="/assets/images/other/clock.png"></img><span className="customizedfontSize"> 2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="1">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row govuk-!-font-size-14">
                                                   
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14">
                                                        <img className="imageSizeSM" src="/assets/images/other/clock.png"></img><span className="customizedfontSize"> 2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="1">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row govuk-!-font-size-14">
                                                   
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14">
                                                        <img className="imageSizeSM" src="/assets/images/other/clock.png"></img><span className="customizedfontSize"> 2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="1">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row govuk-!-font-size-14">
                                                   
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14">
                                                        <img className="imageSizeSM" src="/assets/images/other/clock.png"></img><span className="customizedfontSize"> 2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="1">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14">
                                                        <img className="imageSizeSM" src="/assets/images/other/clock.png"></img><span className="customizedfontSize"> 2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="1">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14">
                                                        <img className="imageSizeSM" src="/assets/images/other/clock.png"></img><span className="customizedfontSize"> 2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="1">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14">
                                                        <img className="imageSizeSM" src="/assets/images/other/clock.png"></img><span className="customizedfontSize"> 2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" colSpan="1">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-auto">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14">
                                                        <img className="imageSizeSM" src="/assets/images/other/clock.png"></img><span className="customizedfontSize"> 2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
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
                                        <div className="col ">
                                            Hasmath
                                        </div>
                                    </div>
                                    <div className="row">
                                        <div className="col-1">
                                            <img className="imageSizeSM" src="/assets/images/other/star.png"></img>
                                        </div>
                                        <div className="col-1">
                                            <img className="imageSizeSM" src="/assets/images/other/star.png"></img>
                                        </div>
                                        <div className="col-1">
                                            <img className="imageSizeSM" src="/assets/images/other/star.png"></img>
                                        </div>
                                    </div>
                                </th>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" >
                                    <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Software Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical">
                                    {/* <div class="row move">
                                        <div class="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/minor-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14"> Improve Sales</h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <img className="imageSizeSM" src="/assets/images/other/clock.png"></img>
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14 "> <span className="customizedfontSize" >2019-07-09</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> */}
                                     <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                    <div className="skillColor"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Improve Sales Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" >
                                    <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Software Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical">
                                    <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Marketing and Sales Dev
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" >
                                    <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Software Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical" >
                                    <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Software Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Software Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Software Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Software Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric table-vertical">
                                <div className="row move">
                                        <div className="col-sm-12">
                                            <div className="card text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSizeSM" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s govuk-!-font-size-14">
                                                            Software Development
                                                       </h5>
                                                    </div>
                                                </div>
                                                <div className="row move">
                                                    <div className="govuk-caption-m govuk-body-s govuk-!-font-size-14"><img className="imageSizeSM" src="/assets/images/other/clock.png"></img> <span className="customizedfontSize">2019-07-08</span></div>
                                                </div>
                                            </div>
                                        </div>
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

export default SolutionVerticalPage;