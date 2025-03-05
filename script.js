const tagSelectors = [
  {
    tag: 'h1',
    name: 'Title',
    parent: 'header',
    sibling: 0,
    text: 'CAT NEWS BROKE NOOOO'
  },
  /*
   {
      tag: 'h2',
     name: 'Name',
      parent: 'div#element-0',
      sibling: 0,
      text: 'Put your name here'
    },
    {
      tag: 'h3',
      name: 'Grade',
      parent: 'div#element-0',
      sibling: 1,
      text: 'Put which grade you are in here'
    },
    {
      tag: 'h4',
      name: '\"Who Am I\" header',
      parent: 'div#element-1',
      sibling: 0,
      text: 'Put \"Who Am I\" here'
    },
    {
      tag: 'ul',
      name: 'Unordered list tag',
      parent: 'div#element-1',
      sibling: 1,
      text: 'Don\'t forget the <ul> tag!'
    },
    {
      tag: 'li',
      name: 'Description',
      parent: 'div#element-1 ul',
      sibling: 0,
      text: 'Put something about yourself'
    },
    {
      tag: 'h1',
      name: 'Image',
      parent: 'div#element-2',
      sibling: 0,
      text: 'Put an image here'
    },
    {
      tag: 'p',
      name: 'Image description',
      parent: 'div#element-3',
      sibling: 0,
      text: 'Put a description of the image here'
    },
    */
]

document.onload = main();

function main() {
  let isAllTagsPresent = true;
  const isChecklist = window.location.search === '?testing';

  createIds();
  if (isChecklist) {
    createChecklist();
  }
  tagSelectors.map(selector => {
    if (isChecklist) {
      createChecklistItem(selector);
    }

    if (!tagExists(selector)) {
      addElement(selector);
      isAllTagsPresent = false;
    }
  });

  document.querySelectorAll('section')[1].setAttribute('class', 'bg1');
  if (isChecklist) {

    isAllTagsPresent ?
      document.querySelector('#checklist').setAttribute('id', 'complete') :
      document.querySelector('#checklist').setAttribute('id', 'incomplete');
  }
}
function createIds() {
  const divs = document.querySelectorAll('div');

  divs.forEach((div, index) => div.setAttribute('id', `element-${index}`));
}

function tagExists(selector) {
  const element = document.querySelector(selector.tag);

  return document.body.contains(element);
}

function addElement(selector) {
  const element = document.createElement(selector.tag);
  const elementContent = document.createTextNode(selector.text);
  element.appendChild(elementContent);

  const parent = document.querySelector(selector.parent);
  parent.insertBefore(element, parent.children[selector.sibling]);
}

function createChecklist() {
  const section = document.createElement('section');
  section.setAttribute('id', 'checklist')

  const header = document.querySelector('header');
  const body = document.querySelector('body');
  body.insertBefore(section, header);
}

function createChecklistItem(selector) {
  const section = document.querySelector('section#checklist');
  const checklistItem = document.createElement('i');
  checklistItem.setAttribute('class', tagExists(selector) ? 'fas fa-check' : 'fas fa-times');
  const checklistItemContent = document.createTextNode(selector.name);

  checklistItem.appendChild(checklistItemContent);
  section.appendChild(checklistItem);
}
// Date and Time
document.addEventListener('DOMContentLoaded', function () {
  const dateElement = document.getElementById('current-date');
  const timeElement = document.getElementById('current-time');
  const daysOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
  const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

  function updateDateTime() {
    const now = new Date();
    const dayName = daysOfWeek[now.getDay()];
    const monthName = months[now.getMonth()];
    const day = now.getDate();
    const timeString = now.toLocaleTimeString();

    dateElement.innerHTML = `<span class="title-two">The Current Date:</span><br> ${dayName}, ${monthName} ${day}`;
    timeElement.innerHTML = `<span class="title-two">The Current Time:</span><br> ${timeString}`;
  }

  setInterval(updateDateTime, 1000);
  updateDateTime();
}

);

function moveUp() {
  document.querySelector('.Stmove').classList.toggle('move-up');
}

function moveLeft() {
  document.querySelector('.Stmove').classList.toggle('move-left');
}

function moveRight() {
  document.querySelector('.Stmove').classList.toggle('move-right');
}

function moveDown() {
  document.querySelector('.Stmove').classList.toggle('move-down');
}




