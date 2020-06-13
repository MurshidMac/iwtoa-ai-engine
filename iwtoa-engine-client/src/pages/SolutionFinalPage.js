import React, { Component } from 'react';
import HeaderWithService from "../custom-components/HeaderWithService";
import Footer from '../components/Footer';

class SolutionFinalPage extends Component {

    json = {
        "status": "NOT_SOLVING",
        "dateList": [
            "2019-07-12",
            "2019-07-13",
            "2019-07-14",
            "2019-07-15",
            "2019-07-16",
            "2019-07-17",
            "2019-07-18",
            "2019-07-19",
            "2019-07-20"
        ],
        "width": 9,
        "solveTaskMap": {
            "murshid": {
                "solvedTaskList": [
                    {
                        "id": "Expand Tax-9",
                        "assignee": "murshid",
                        "userSkills": [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        "nextTaskId": "Expand Tax-6",
                        "start": 0,
                        "end": 1,
                        "effort": 1,
                        "deadline": -19,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "adb5f893-927a-11e9-9efb-4ec1cef39f94"
                    },
                    {
                        "id": "Expand Tax-6",
                        "assignee": "murshid",
                        "userSkills": [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        "nextTaskId": "Improve Sales-1",
                        "start": 1,
                        "end": 2,
                        "effort": 1,
                        "deadline": -18,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "5077e6af-a163-11e9-9b20-da262df9d7ed"
                    },
                    {
                        "id": "Improve Sales-1",
                        "assignee": "murshid",
                        "userSkills": [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        "nextTaskId": "Improve Sales-4",
                        "start": 2,
                        "end": 4,
                        "effort": 2,
                        "deadline": -20,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "4695eda0-a48f-11e9-be3f-6e53e9d2e217"
                    },
                    {
                        "id": "Improve Sales-4",
                        "assignee": "murshid",
                        "userSkills": [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        "nextTaskId": "Software Development-2",
                        "start": 4,
                        "end": 6,
                        "effort": 2,
                        "deadline": -20,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "50161787-a163-11e9-9b20-da262df9d7ed"
                    },
                    {
                        "id": "Software Development-2",
                        "assignee": "murshid",
                        "userSkills": [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        "nextTaskId": null,
                        "start": 6,
                        "end": 9,
                        "effort": 3,
                        "deadline": -19,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "4695eda1-a48f-11e9-be3f-6e53e9d2e217"
                    }
                ],
                "userSkills": [
                    "team building",
                    "programming",
                    "Problem Solving"
                ]
            },
            "hasmath": {
                "solvedTaskList": [
                    {
                        "id": "Expand Tax-3",
                        "assignee": "hasmath",
                        "userSkills": [
                            "game development",
                            "Problem Solving",
                            "team management"
                        ],
                        "nextTaskId": "Improve Sales-7",
                        "start": 0,
                        "end": 1,
                        "effort": 1,
                        "deadline": -18,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "46c75ded-a48f-11e9-be3f-6e53e9d2e217"
                    },
                    {
                        "id": "Improve Sales-7",
                        "assignee": "hasmath",
                        "userSkills": [
                            "game development",
                            "Problem Solving",
                            "team management"
                        ],
                        "nextTaskId": "Software Development-8",
                        "start": 1,
                        "end": 3,
                        "effort": 2,
                        "deadline": -21,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "ad59a7ab-927a-11e9-9efb-4ec1cef39f94"
                    },
                    {
                        "id": "Software Development-8",
                        "assignee": "hasmath",
                        "userSkills": [
                            "game development",
                            "Problem Solving",
                            "team management"
                        ],
                        "nextTaskId": "Software Development-5",
                        "start": 3,
                        "end": 6,
                        "effort": 3,
                        "deadline": -20,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "ad8301a7-927a-11e9-9efb-4ec1cef39f94"
                    },
                    {
                        "id": "Software Development-5",
                        "assignee": "hasmath",
                        "userSkills": [
                            "game development",
                            "Problem Solving",
                            "team management"
                        ],
                        "nextTaskId": null,
                        "start": 6,
                        "end": 9,
                        "effort": 3,
                        "deadline": -19,
                        "priority": "Critical priority",
                        "requiredSkills": [
                            "Problem Solving"
                        ],
                        "noOfLeaves": 0,
                        "flowableRef": "50462843-a163-11e9-9b20-da262df9d7ed"
                    }
                ],
                "userSkills": [
                    "game development",
                    "Problem Solving",
                    "team management"
                ]
            }
        },
        "colorSkillMap": {
            "team management": "blue",
            "Problem Solving": "red",
            "team building": "yellow",
            "programming": "purple",
            "game development": "green"
        },
        "dueDateMap": {
            "Expand Tax-6": "2019-06-24",
            "Expand Tax-3": "2019-06-24",
            "Software Development-2": "2019-06-23",
            "Software Development-5": "2019-06-23",
            "Improve Sales-7": "2019-06-21",
            "Improve Sales-1": "2019-06-22",
            "Software Development-8": "2019-06-22",
            "Improve Sales-4": "2019-06-22",
            "Expand Tax-9": "2019-06-23"
        }
    };


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
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-09</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-10</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-11</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-12</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-13</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-14</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-15</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-16</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-17</th>
                                <th className="govuk-table__header govuk-table__header--numeric text-center" scope="col">2019-07-18</th>
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
                                    <div className="row">
                                        <div className="col-1">
                                            <img className="imageSize" src="/assets/images/other/star.png"></img>
                                        </div>
                                        <div className="col-1">
                                            <img className="imageSize" src="/assets/images/other/star.png"></img>
                                        </div>
                                        <div className="col-1">
                                            <img className="imageSize" src="/assets/images/other/star.png"></img>
                                        </div>
                                    </div>
                                </th>
                                <td className="govuk-table__cell govuk-table__cell--numeric" colSpan="2">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle" >
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor1"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/critical-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-12">
                                                        <h5 className="card-title govuk-body-s"> Expand Tax</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-12">
                                                        <div className="govuk-caption-m govuk-body-s"> <img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-10</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric" colSpan="2">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>

                                                </div>
                                                <div className="row ">
                                                    <div className="col-12">
                                                        <h5 className="card-title govuk-body-s "> Improve Sales </h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-12">
                                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-12</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric" colSpan="0">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor2"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                </div>
                                                <div className="row ">
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s textSize"><span title="Improve sales">Improve sales</span></h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="">
                                                        <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col ">
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
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
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
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
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
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
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
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
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
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
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
                                        <div className="col">
                                            Hasmath
                                        </div>
                                    </div>
                                    <div className="row">
                                        <div className="col-1">
                                            <img className="imageSize" src="/assets/images/other/star.png"></img>
                                        </div>
                                        <div className="col-1">
                                            <img className="imageSize" src="/assets/images/other/star.png"></img>
                                        </div>
                                        <div className="col-1">
                                            <img className="imageSize" src="/assets/images/other/star.png"></img>
                                        </div>
                                    </div>
                                </th>
                                <td className="govuk-table__cell govuk-table__cell--numeric " >
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric " >
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric " >
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric " >
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td className="govuk-table__cell govuk-table__cell--numeric">
                                    <div className="row">
                                        <div className="col">
                                            <div className="card-body text-dark card border-dark mb-8 cardStyle">
                                                <div className="row">
                                                    <div className="col-1">
                                                        <div className="skillColor4"></div>
                                                    </div>
                                                    <div className="col-1">
                                                        <img className="imageSize" src="/assets/images/skills/major-priority.png"></img>
                                                    </div>
                                                    <div className="col">
                                                        <h5 className="card-title govuk-body-s"> Software Development</h5>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="govuk-caption-m govuk-body-s"><img className="imageSize" src="/assets/images/other/clock.png"></img> 2019-07-09</div>
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

export default SolutionFinalPage;