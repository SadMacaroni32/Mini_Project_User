import LogoImage from "../../../assets/control-center1.png";

export default function FooterTab() {
    return (
<footer className="footer footer-center p-10 bg-[#1b2634] text-[#85d9ef]">
  <nav>
    <div className="grid grid-flow-col gap-4">
    <img src ={LogoImage} />    
    </div>
  </nav> 
  <aside>
    <p>Copyright © 2024 - All right reserved by Control Center Company.</p>
  </aside>
</footer>
    );
}
