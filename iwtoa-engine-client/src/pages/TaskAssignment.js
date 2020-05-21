import React, { Component } from 'react';
import HeaderWithService from "../custom-components/HeaderWithService";
import Footer from '../components/Footer';
import Table from '../components/Table';

class TaskAssignment extends Component {

    data = {
        status: "NOT_SOLVING",
        dateList: [
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
        width: 9,
        solveTaskMap: {
            murshid: {
                solvedTaskList: [
                    {
                        id: "Expand Tax-9",
                        assignee: "murshid",
                        userSkills: [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        nextTaskId: "Expand Tax-6",
                        start: 0,
                        end: 1,
                        effort: 1,
                        deadline: -19,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "adb5f893-927a-11e9-9efb-4ec1cef39f94"
                    },
                    {
                        id: "Expand Tax-6",
                        assignee: "murshid",
                        userSkills: [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        nextTaskId: "Improve Sales-1",
                        start: 1,
                        end: 2,
                        effort: 1,
                        deadline: -18,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "5077e6af-a163-11e9-9b20-da262df9d7ed"
                    },
                    {
                        id: "Improve Sales-1",
                        assignee: "murshid",
                        userSkills: [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        nextTaskId: "Improve Sales-4",
                        start: 2,
                        end: 4,
                        effort: 2,
                        deadline: -20,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "4695eda0-a48f-11e9-be3f-6e53e9d2e217"
                    },
                    {
                        id: "Improve Sales-4",
                        assignee: "murshid",
                        userSkills: [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        nextTaskId: "Software Development-2",
                        start: 4,
                        end: 6,
                        effort: 2,
                        deadline: -20,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "50161787-a163-11e9-9b20-da262df9d7ed"
                    },
                    {
                        id: "Software Development-2",
                        assignee: "murshid",
                        userSkills: [
                            "team building",
                            "programming",
                            "Problem Solving"
                        ],
                        nextTaskId: null,
                        start: 6,
                        end: 9,
                        effort: 3,
                        deadline: -19,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "4695eda1-a48f-11e9-be3f-6e53e9d2e217"
                    }
                ],
                userSkills: [
                    "team building",
                    "programming",
                    "Problem Solving"
                ]
            },
            hasmath: {
                solvedTaskList: [
                    {
                        id: "Expand Tax-3",
                        assignee: "hasmath",
                        userSkills: [
                            "game development",
                            "team management",
                            "Problem Solving"
                        ],
                        nextTaskId: "Improve Sales-7",
                        start: 0,
                        end: 1,
                        effort: 1,
                        deadline: -18,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "46c75ded-a48f-11e9-be3f-6e53e9d2e217"
                    },
                    {
                        id: "Improve Sales-7",
                        assignee: "hasmath",
                        userSkills: [
                            "game development",
                            "team management",
                            "Problem Solving"
                        ],
                        nextTaskId: "Software Development-8",
                        start: 1,
                        end: 3,
                        effort: 2,
                        deadline: -21,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "ad59a7ab-927a-11e9-9efb-4ec1cef39f94"
                    },
                    {
                        id: "Software Development-8",
                        assignee: "hasmath",
                        userSkills: [
                            "game development",
                            "team management",
                            "Problem Solving"
                        ],
                        nextTaskId: "Software Development-5",
                        start: 3,
                        end: 6,
                        effort: 3,
                        deadline: -20,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "ad8301a7-927a-11e9-9efb-4ec1cef39f94"
                    },
                    {
                        id: "Software Development-5",
                        assignee: "hasmath",
                        userSkills: [
                            "game development",
                            "team management",
                            "Problem Solving"
                        ],
                        nextTaskId: null,
                        start: 6,
                        end: 9,
                        effort: 3,
                        deadline: -19,
                        priority: "Critical priority",
                        requiredSkills: [
                            "Problem Solving"
                        ],
                        noOfLeaves: 0,
                        flowableRef: "50462843-a163-11e9-9b20-da262df9d7ed"
                    }
                ],
                userSkills: [
                    "game development",
                    "team management",
                    "Problem Solving"
                ]
            }
        },
        colorSkillMap: {
            teammanagement: "blue",
            ProblemSolving: "red",
            teambuilding: "yellow",
            programming: "purple",
            gamedevelopment: "green"
        },
        dueDateMap: {
            ExpandTax6: "2019-06-24",
            ExpandTax3: "2019-06-24",
            SoftwareDevelopment2: "2019-06-23",
            SoftwareDevelopment5: "2019-06-23",
            ImproveSales7: "2019-06-21",
            ImproveSales1: "2019-06-22",
            SoftwareDevelopment8: "2019-06-22",
            ImproveSales4: "2019-06-22",
            ExpandTax9: "2019-06-23"
        }
    }


    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="Task assignment" />
                <Table data={this.data}/>
                <Footer />
            </div>
        );
    }
}

export default TaskAssignment;