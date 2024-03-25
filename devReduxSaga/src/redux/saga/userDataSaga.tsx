import axios from "axios";
import { takeEvery } from 'redux-saga/effects';

function* workerSaga() {
    yield takeEvery(GET_USERS_FETCH, workerSaga);
}

export default workerSaga;