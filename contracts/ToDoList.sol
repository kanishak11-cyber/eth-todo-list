pragma solidity ^0.5.16;
// pragma solidity ^0.8.10;

contract ToDoList{
    uint public taskCount=0;

struct Task{
    uint id;
    string content;
    bool completed;
}
mapping(uint => Task ) public tasks;
constructor() public {
    createTask("Hello");
    }

function createTask(string memory _content) public {
    taskCount++;
    tasks[taskCount] = Task(taskCount,_content,false);
   
}
}