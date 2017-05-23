1) What are some of the key design philosophies of the Linux OS?
	A large portion of the linux philosophy revolves around the idea that the user knows what they are doing. It "was not designed to stop users from doing stupid things, as that would also stop them from doing clever things."
	
	Linux treates everyone equally and allows everyone the max amount of power (Microsoft has a major design philosophy around protecting users, for contrast.)
	
	Other major tenets things like "small is beautiful" and "Each program does one thing well", as smaller written programs/commands are faster, and tend to do things very well when a program focuses on doing one thing.

2) What is a VPS (virtual private server)? What are the advantages of using a VPS?
	A VPS server is basically your own private server space that you can host. With VPS servers you rent the entire server, so you are not sharing a space with others. A VPS tends to be a good choice if you think you will be using the space for an extended period of time.
	
	Advantages of using A VPS include things such as privacy, increased control and customization, as well as resources dedicated to you. With a VPS, you are not sharing with anyone else, so nobody will have potential access to your files, you'll be able to customize and control as you see fit, and you won't have anyone else potentially taking up available RAM When you need it.

3) Why is it considered a bad idea to run programs as the root user on a Linux system?
	Running programs in root can easily cripple securite on a linux system. When logged in as root, all programs run with root privilages, meaning that every vulnerability in every application can now destroy your system. A small bug in an application can erase some system files as well.
	Another reason that its a bad idea is that the system will run your commands without asking, even if it is a terrible idea, because since you are in root the system assumes that it knows what you are doing.