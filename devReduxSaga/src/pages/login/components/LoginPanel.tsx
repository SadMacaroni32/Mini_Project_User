/* eslint-disable @typescript-eslint/no-unused-vars */
import BackgroundImage from "../../../assets/background-chameleon.png";
import { RootState } from "../../../redux/store/store";
import { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { clearError } from "../../../redux/state/userState";
import { login } from "../../../redux/saga/sessionSaga";
import { useNavigate } from "react-router-dom";
import * as React from "react";

export default function LoginPanel() {
    const dispatch = useDispatch();
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [isValid, setIsValid] = useState(true);
    const [errorIcon, setErrorIcon] = useState<JSX.Element>();
    const [helperText, setHelperText] = useState("");
  
    const errorMessage = useSelector    ((state: RootState) => state.sessionReducer.error);
    const [error, setErrorMessage] = React.useState<string | undefined>("");
  
  
    const navigate = useNavigate();
  
    /* THIS LINE IS USED TO FETCHED THE LOGGED IN USER'S INFO */
    const loggedUser = useSelector((state: RootState) => {
      return state.sessionReducer.user;
  });
  
  /* THIS LINE IS USED TO FETCHED THE AUTHENTICATION STATUS */
  const isAuthenticated = useSelector((state: RootState) => {
      return state.sessionReducer.isAuthenticated;
  });
  
  React.useEffect(() => {
      // Remove this entire useEffect block
  }, []);
  
  const handleLogin = (event: React.FormEvent) => {
      event.preventDefault();
      dispatch(login({ username, password }));
      dispatch(clearError());
  };
  
  React.useEffect(() => {
      if (errorMessage === null) {
          setErrorMessage(undefined);
          dispatch(clearError());
          console.log("there's no error", error)
      } else {
          setErrorMessage(errorMessage);
          dispatch(clearError());
          console.log("may error ka!", error)
      }
  }, [errorMessage, error, username, password, dispatch]);


    return (
        <div className="bg-no-repeat bg-cover bg-center relative" style={{backgroundImage: `url(${BackgroundImage})`, height: "100vh"}}>
            <div className="min-h-screen sm:flex sm:flex-row mx-0 justify-center">
                <div className="flex-col flex self-center p-10 sm:max-w-5xl xl:max-w-2xl z-10">
                    <div className="self-start hidden lg:flex flex-col text-white">
                    </div>
                </div>
                <div className="flex justify-center self-center z-10">
                    <div className="p-12 bg- mx-auto rounded-2xl w-100 border-2 bg-[#1b2634] border-[#3c4656]">
                        <div className="mb-4">
                            <h3 className="font-semibold text-2xl text-[#85d9ef]">User Login</h3>
                            <p className="text-gray-500">Please sign in to your account.</p>
                        </div>

                        <div className="space-y-5">
            <form onSubmit={handleLogin}>
                <div className="space-y-2">
                    <label className="text-sm font-medium text-[#85d9ef] tracking-wide">Username</label>
                    <input
                        value={username}
                        onChange={(e) => setUsername(e.target.value)}
                        className="w-full text-base px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-green-400"
                        type="text"
                        placeholder="Enter your Username"
                    />
                </div>
                <div className="space-y-2">
                    <label className="mb-5 text-sm font-medium text-[#85d9ef] tracking-wide">Password</label>
                    <input
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                        className="w-full text-base px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-green-400"
                        type="password"
                        placeholder="Enter your password"
                    />
                </div>
                <div className="flex items-center justify-between">
                    <div className="flex items-center">
                        <input
                            id="remember_me"
                            name="remember_me"
                            type="checkbox"
                            className="h-4 w-4 bg-blue-500 focus:ring-blue-400 border-gray-300 rounded"
                        />
                        <label htmlFor="remember_me" className="ml-2 block text-sm text-[#85d9ef]">
                            Remember me
                        </label>
                    </div>
                    <div className="text-sm">
                        <a href="#" className="text-[#85d9ef] hover:text-[#4eaec5]">
                            Forgot your password?
                        </a>
                    </div>
                </div>
                <div>
                    <button
                        type="submit"
                        className="w-full flex justify-center bg-[#1b2634] hover:bg-[#4eaec5] hover:text-[#1b2634] text-[#85d9ef] p-3 rounded-full tracking-wide font-semibold shadow-lg cursor-pointer transition ease-in duration-500"
                    >
                        Sign in
                    </button>
                </div>
            </form>
        </div>

                        <div className="pt-5 text-center text-gray-400 text-xs">
                            <span>
                                Copyright © 2021-2022
                                <a href="https://codepen.io/uidesignhub" rel="noreferrer" target="_blank" title="Ajimon" className="text-green hover:text-green-500">AJI</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}
