import http from 'http';
import assert from 'assert';
import { describe, it } from 'mocha';

import '../src/webserver.js';

describe('Example Node Server', () => {
  it('should return 200', (done) => {
    http.get('http://127.0.0.1:1337', (res) => {
      assert.equal(200, res.statusCode);
      done();
    });
  });
});
