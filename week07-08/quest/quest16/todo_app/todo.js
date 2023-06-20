// １．フォームの要素を取得
const formTodo = document.getElementById('todo-form');

// ２．イベントハンドラの設定
formTodo.addEventListener('submit', function (event) {
  event.preventDefault();

  const todoInput = document.getElementById('todo-input');
  console.log(todoInput.value);
});

// ３．要素ノードの追加
const listTodo = document.getElementById('todo-list');

formTodo.addEventListener('submit', function (event) {
  event.preventDefault();

  const todoInput = document.getElementById('todo-input');

  const checkbox = document.createElement('input');
  checkbox.setAttribute('type', 'checkbox');

  const taskName = document.createElement('span');
  taskName.innerHTML = todoInput.value;

  const deleteButton = document.createElement('button');
  deleteButton.textContent = '削除';
  deleteButton.classList.add('delete-button');

  const checkboxList = document.createElement('li');
  checkboxList.appendChild(checkbox);
  checkboxList.appendChild(taskName);
  checkboxList.appendChild(deleteButton);
  checkboxList.classList.add('todo-item');

  listTodo.appendChild(checkboxList);

  deleteButton.addEventListener('click', function() {
    listTodo.removeChild(checkboxList);
  });

  checkbox.addEventListener('change', function() {
    if (this.checked) {
      taskName.classList.add('delete-line');
    } else {
      taskName.classList.remove('delete-line');
    }
  });

  todoInput.value = '';
});
