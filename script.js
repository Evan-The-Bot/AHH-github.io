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

let currentX = 0;
let currentY = 0;
const initialX = 0;
const initialY = 0;

function moveImage() {
  const image = document.getElementById('AH');
  const body = document.body;
  const bodyRect = body.getBoundingClientRect();
  const imageRect = image.getBoundingClientRect();

  // Calculate the new position
  const newX = currentX + 100; // Move 100px to the right each time
  const newY = currentY - 50;  // Move 50px up each time

  // Check if the new position is within the body borders
  if (imageRect.right + 100 <= bodyRect.right && imageRect.left + 100 >= bodyRect.left &&
    imageRect.bottom - 50 <= bodyRect.bottom && imageRect.top - 50 >= bodyRect.top) {
    currentX = newX;
    currentY = newY;
    image.style.transform = `translate(${currentX}px, ${currentY}px)`;
  } else {
    console.log('Movement stopped: Image would go out of bounds');
  }
}

function resetImage() {
  const image = document.getElementById('AH');
  currentX = initialX;
  currentY = initialY;
  image.style.transform = `translate(${initialX}px, ${initialY}px)`;
}




