console.log('Hello World');

// 1.書籍プリンター
function printBooks(books) {
  for (let i = 0; i < books.length; i++) {
    console.log(books[i].name + books[i].author);
  }
}

books = [
  {name: '「JavaScript入門」', author: '山田太郎'},
  {name: '「JavaScriptの絵本」', author: '山田次郎'}
];
printBooks(books);

// 2.ユーザーパーミッションチェッカー

function checkPermission(username, permission) {
  for (let i = 0; i < users.length; i++) {
    if (username === users[i].username) {
      if (permission === 'canRead') {
        console.log(users[i].permissions.canRead);
      } else if (permission === 'canWrite') {
        console.log(users[i].permissions.canWrite);
      } else {
        console.log(users[i].permissions.canDelete);
      }
    }
  }
}

let users = [
  {
    username: '山田',
    permissions: {
      canRead: true,
      canWrite: true,
      canDelete: false
    }
  },
  {
    username: '佐藤',
    permissions: {
      canRead: false,
      canWrite: true,
      canDelete: false
    }
  },
  // ユーザーを追加してください
  {
    username: '馬田',
    permissions: {
      canRead: true,
      canWrite: false,
      canDelete: true
    }
  }
];

checkPermission('山田', 'canWrite');
checkPermission('馬田', 'canWrite');
checkPermission('佐藤', 'canDelete');

// 3.メソッド

// １番
const obj = {
  method: function () {
    console.log('method');
  },
}

obj.method();

// ２番
const obj2 = {
  method: () => {
    console.log('method');
  },
}

obj.method();

// ３番
const obj3 = {
  method() {
    console.log('method');
  },
}

obj.method();

// ４番
// const obj4 = {
//   () => {
//   console.log('method');
// },
// }

// obj.method();
