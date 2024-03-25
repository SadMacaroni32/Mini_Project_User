import EditProfile from "./EditProfile";

export default function editProfileCard() {
    return (<>
    
        <div className="grid mt-2 mx-4 grid-cols-1 gap-6">
            <div className="card w-full p-6 shadow-xl my-8 bg-[#1b2634] text-[#85d9ef]">
                <p className="text-center">PROFILE EDIT</p>

                <div className="divider mt-2 bg-[#53d2fa]"></div>

                {/* Card Body */}
                <div className='h-full w-full pb-6 bg-[#1b2634] text-[#85d9ef]'>
                    <EditProfile />
                </div>
            </div>
        </div>

    </>)
}