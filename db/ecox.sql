-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 07:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecox`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles1`
--

CREATE TABLE `articles1` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `articles1`
--

INSERT INTO `articles1` (`id`, `title`, `content`, `img_path`, `description`) VALUES
(1, 'Pollution Prevention at Home', '<ul><li><b>Use Eco-Friendly Cleaning Products ?:</b><ul><li>Traditional cleaning products often contain harsh chemicals that can pollute indoor air and waterways.</li><li>Switching to eco-friendly alternatives made from natural ingredients can minimize these harmful effects.</li><li>Look for products labeled as non-toxic, biodegradable, and free from synthetic fragrances and dyes.</li></ul></li><li><b>Properly Dispose of Hazardous Materials ??:</b><ul><li>Items such as batteries, paint, electronics, and household chemicals should never be thrown in the regular trash.</li><li>These materials can leak harmful substances into the environment.</li><li>Take them to designated recycling or disposal centers where they can be handled safely.</li></ul></li><li><b>Reduce, Reuse, Recycle ??:</b><ul><li><b>Reduce Waste:</b><ul><li>Purchase items with minimal packaging and avoid single-use plastics.</li></ul><li><b>Reuse Items:</b><ul><li>Repurpose containers and donate clothes.</li></ul><li><b>Recycle:</b><ul><li>Recycle materials like paper, glass, and aluminum to prevent them from ending up in landfills.</li></ul></ul></li><li><b>Conserve Water ?:</b><ul><li><b>Fix Leaky Faucets:</b><ul><li>Prevent water wastage and reduce utility bills.</li></ul><li><b>Install Water-Saving Fixtures:</b><ul><li>Use low-flow showerheads and dual-flush toilets.</li></ul><li><b>Use Rain Barrels:</b><ul><li>Collect water for gardening.</li></ul><li><b>Avoid Overusing Pesticides and Fertilizers:</b><ul><li>Prevent runoff into water sources.</li></ul></ul></li><li><b>Improve Indoor Air Quality ?:</b><ul><li><b>Use Air Purifiers:</b><ul><li>Remove pollutants from indoor air.</li></ul><li><b>Avoid Tobacco Indoors:</b><ul><li>Maintain a smoke-free home environment.</li></ul><li><b>Ventilate Regularly:</b><ul><li>Open windows to allow fresh air circulation.</li></ul><li><b>Houseplants:</b><ul><li>Keep indoor plants to help filter toxins from the air.</li></ul></ul></ul>', NULL, 'Discover practical steps for reducing your environmental impact at home with these eco-friendly practices. Start by switching to non-toxic, biodegradable cleaning products to minimize indoor air and water pollution. Properly dispose of hazardous materials like batteries and household chemicals by taking them to designated recycling centers. Embrace the three Rs—reduce waste through minimal packaging choices, reuse items like containers and clothes, and recycle materials such as paper and glass.\r\n\r\nConserve water by fixing leaks and installing water-saving fixtures, which not only save water but also reduce utility bills. Enhance indoor air quality by using air purifiers and maintaining a smoke-free environment. Ventilate your home regularly and introduce houseplants to naturally filter indoor toxins. These small changes can have a significant positive impact on both your living environment and the planet.'),
(2, 'Carbon Footprint Reduction', '\r\n<ul>\r\n  <li><b>Energy-Efficient Practices:</b>\r\n    <ul>\r\n      <li>Switch to Renewable Energy: Choose renewable energy sources like solar or wind power for your home.</li>\r\n      <li>Energy-Efficient Appliances: Opt for appliances with high energy efficiency ratings (ENERGY STAR certified).</li>\r\n      <li>Reduce Energy Consumption: Turn off lights and electronics when not in use and insulate your home for better energy conservation.</li>\r\n    </ul>\r\n  </li>\r\n  <li><b>Sustainable Transportation:</b>\r\n    <ul>\r\n      <li>Use Public Transport: Reduce car emissions by using public transit, carpooling, or biking.</li>\r\n      <li>Choose Electric or Hybrid Vehicles: If possible, switch to electric or hybrid vehicles with lower emissions.</li>\r\n      <li>Walk More: Incorporate walking into your daily routine for short trips.</li>\r\n    </ul>\r\n  </li>\r\n  <li><b>Waste Management:</b>\r\n    <ul>\r\n      <li>Recycling: Recycle paper, glass, plastic, and metal to minimize landfill waste.</li>\r\n      <li>Composting: Compost organic waste to reduce methane emissions from landfills.</li>\r\n      <li>Reduce Single-Use Items: Avoid single-use plastics and opt for reusable alternatives.</li>\r\n    </ul>\r\n  </li>\r\n  <li><b>Sustainable Diet:</b>\r\n    <ul>\r\n      <li>Eat Local and Seasonal Foods: Reduce emissions associated with food transport by choosing locally produced and seasonal foods.</li>\r\n      <li>Reduce Meat Consumption: Lower your carbon footprint by incorporating more plant-based meals into your diet.</li>\r\n      <li>Support Sustainable Agriculture: Choose foods produced using sustainable farming practices.</li>\r\n    </ul>\r\n  </li>\r\n  <li><b>Carbon Offsetting:</b>\r\n    <ul>\r\n      <li>Support Carbon Offset Programs: Offset your unavoidable carbon emissions by investing in projects that reduce greenhouse gases elsewhere.</li>\r\n    </ul>\r\n  </li>\r\n</ul>\r\n', 'none', 'Reducing your carbon footprint involves making mindful choices that minimize the amount of greenhouse gases released into the atmosphere, thus combating climate change.'),
(3, '5 Energy-Efficient Home Tips', '<ul><li><b>Use Eco-Friendly Cleaning Products :</b><ul><li>Traditional cleaning products often contain harsh chemicals that can pollute indoor air and waterways.</li><li>Switching to eco-friendly alternatives made from natural ingredients can minimize these harmful effects.</li><li>Look for products labeled as non-toxic, biodegradable, and free from synthetic fragrances and dyes.</li></ul></li><li><b>Properly Dispose of Hazardous Materials :</b><ul><li>Items such as batteries, paint, electronics, and household chemicals should never be thrown in the regular trash.</li><li>These materials can leak harmful substances into the environment.</li><li>Take them to designated recycling or disposal centers where they can be handled safely.</li></ul></li><li><b>Reduce, Reuse, Recycle :</b><ul><li><b>Reduce Waste:</b><ul><li>Purchase items with minimal packaging and avoid single-use plastics.</li></ul><li><b>Reuse Items:</b><ul><li>Repurpose containers and donate clothes.</li></ul><li><b>Recycle:</b><ul><li>Recycle materials like paper, glass, and aluminum to prevent them from ending up in landfills.</li></ul></ul></li><li><b>Conserve Water :</b><ul><li><b>Fix Leaky Faucets:</b><ul><li>Prevent water wastage and reduce utility bills.</li></ul><li><b>Install Water-Saving Fixtures:</b><ul><li>Use low-flow showerheads and dual-flush toilets.</li></ul><li><b>Use Rain Barrels:</b><ul><li>Collect water for gardening.</li></ul><li><b>Avoid Overusing Pesticides and Fertilizers:</b><ul><li>Prevent runoff into water sources.</li></ul></ul></li><li><b>Improve Indoor Air Quality :</b><ul><li><b>Use Air Purifiers:</b><ul><li>Remove pollutants from indoor air.</li></ul><li><b>Avoid Tobacco Indoors:</b><ul><li>Maintain a smoke-free home environment.</li></ul><li><b>Ventilate Regularly:</b><ul><li>Open windows to allow fresh air circulation.</li></ul><li><b>Houseplants:</b><ul><li>Keep indoor plants to help filter toxins from the air.</li></ul></ul></ul></ul>', NULL, 'As the world shifts towards a more sustainable future, making our homes energy-efficient is a great place to start. Not only does it help reduce our carbon footprint, but it also saves us money on utility bills and enhances our living spaces. By incorporating simple changes and smart technologies, we can transform our homes into eco-friendly havens. From lighting to insulation, every detail counts. Here are 5 energy-efficient home tips to get you started.'),
(4, 'Renewable Energy Benefits', '<ul><li><b>Lower Carbon Emissions:</b><ul><li>Renewable energy sources such as solar, wind, and hydroelectric power produce minimal greenhouse gas emissions compared to fossil fuels.</li></ul></li><li><b>Energy Security:</b><ul><li>Diversifying energy sources reduces dependence on imported fossil fuels, enhancing energy security.</li></ul></li><li><b>Job Creation:</b><ul><li>The renewable energy sector creates numerous jobs in manufacturing, installation, and maintenance of renewable energy systems.</li></ul></li><li><b>Economic Growth:</b><ul><li>Investments in renewable energy technologies stimulate economic growth and innovation.</li></ul></li><li><b>Resource Efficiency:</b><ul><li>Renewable energy harnesses naturally occurring resources that are replenished over time, promoting sustainable resource management.</li></ul></li></ul>', NULL, 'Explore the environmental, economic, and social benefits of adopting renewable energy sources.');

-- --------------------------------------------------------

--
-- Table structure for table `articles2`
--

CREATE TABLE `articles2` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `img_path` text DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `articles2`
--

INSERT INTO `articles2` (`id`, `title`, `content`, `img_path`, `category`, `description`) VALUES
(18, 'Switch to renewable energy', '<h2>Switch to Renewable Energy</h2>\n    <p>Making the switch to renewable energy is a critical step towards reducing your environmental impact. Renewable energy sources like <strong>solar</strong> and <strong>wind power</strong> offer clean, sustainable alternatives to fossil fuels.</p>\n    <h3>Benefits of Renewable Energy</h3>\n    <ul>\n        <li><strong>Reduces Greenhouse Gas Emissions:</strong> Unlike fossil fuels, renewable energy sources do not produce carbon dioxide or other harmful pollutants.</li>\n        <li><strong>Sustainable and Abundant:</strong> Renewable energy sources are naturally replenished, ensuring a consistent supply of energy without depleting natural resources.</li>\n        <li><strong>Energy Independence:</strong> By harnessing local renewable energy sources, communities can reduce their reliance on imported fuels and increase energy security.</li>\n    </ul>\n    <h3>How to Switch to Renewable Energy</h3>\n    <ol>\n        <li><strong>Assess Your Energy Needs:</strong> Calculate your home\'s energy consumption to determine the appropriate size and type of renewable energy system.</li>\n        <li><strong>Explore Options:</strong> Research different renewable energy technologies such as solar panels, wind turbines, and geothermal systems.</li>\n        <li><strong>Consult Professionals:</strong> Engage with certified renewable energy installers to get expert advice and accurate installation quotes.</li>\n        <li><strong>Financing and Incentives:</strong> Look for government incentives, grants, and financing options to make the switch more affordable.</li>\n    </ol>\n    <h3>Conclusion</h3>\n    <p>Switching to renewable energy is a vital step in mitigating climate change and promoting sustainable living. By choosing renewable sources, you can significantly reduce your carbon footprint and contribute to a healthier planet.</p>', NULL, 'Energy Reduction', 'enewable energy is energy derived from natural sources that are replenished at a higher rate than they are consumed. Sunlight and wind, for example, are such sources that are constantly being replenished. Renewable energy sources are plentiful and all around us.'),
(19, 'Energy-efficient appliances', '<h2>Energy-Efficient Appliances</h2>\r\n    <p>Using energy-efficient appliances is a simple yet effective way to reduce energy consumption and lower utility bills. Appliances with high energy efficiency ratings, such as those certified by <strong>ENERGY STAR</strong>, use less energy while performing the same tasks as standard appliances.</p>\r\n    <h3>Advantages of Energy-Efficient Appliances</h3>\r\n    <ul>\r\n        <li><strong>Cost Savings:</strong> Energy-efficient appliances can significantly reduce your electricity bills over time.</li>\r\n        <li><strong>Environmental Benefits:</strong> Lower energy consumption translates to reduced greenhouse gas emissions, contributing to a cleaner environment.</li>\r\n        <li><strong>Enhanced Performance:</strong> These appliances often incorporate advanced technologies that improve performance and durability.</li>\r\n    </ul>\r\n    <h3>Choosing Energy-Efficient Appliances</h3>\r\n    <ol>\r\n        <li><strong>Look for ENERGY STAR Certification:</strong> Ensure the appliance has the ENERGY STAR label, indicating it meets energy efficiency guidelines set by the EPA.</li>\r\n        <li><strong>Check Energy Ratings:</strong> Review the energy ratings and compare them with other models to find the most efficient option.</li>\r\n        <li><strong>Consider Lifetime Costs:</strong> While energy-efficient appliances may have a higher upfront cost, the long-term savings on energy bills make them a worthwhile investment.</li>\r\n        <li><strong>Read Reviews:</strong> Research user reviews to gauge the performance and reliability of the appliance.</li>\r\n    </ol>\r\n    <h3>Examples of Energy-Efficient Appliances</h3>\r\n    <ul>\r\n        <li><strong>Refrigerators:</strong> Modern energy-efficient refrigerators use less electricity and come with advanced features like better insulation and improved compressors.</li>\r\n        <li><strong>Washing Machines:</strong> High-efficiency washing machines use less water and energy per load, saving you money and resources.</li>\r\n        <li><strong>Dishwashers:</strong> ENERGY STAR dishwashers reduce water and energy usage without compromising on cleaning performance.</li>\r\n        <li><strong>HVAC Systems:</strong> Upgrading to energy-efficient heating, ventilation, and air conditioning systems can drastically cut energy consumption.</li>\r\n    </ul>\r\n    <h3>Conclusion</h3>\r\n    <p>Investing in energy-efficient appliances is a smart decision for both your wallet and the environment. By making informed choices, you can enjoy the benefits of reduced energy costs and contribute to a sustainable future.</p>', NULL, 'Energy Reduction', 'ENERGY STAR is a widely recognized and trusted label on products that meet strict energy-efficiency requirements set by the U.S. Environmental Protection Agency (EPA). ENERGY STAR certified products are third-party certified and subject to ongoing verification testing.'),
(20, 'Use public transit', '<h2>Use Public Transit</h2>\n    <p>Public transit is an eco-friendly transportation option that helps reduce carbon emissions and traffic congestion. Utilizing buses, trains, and other forms of public transportation can significantly lower your personal carbon footprint.</p>\n    <h3>Benefits of Public Transit</h3>\n    <ul>\n        <li><strong>Reduced Emissions:</strong> Public transit systems emit far fewer pollutants per passenger mile compared to single-occupancy vehicles.</li>\n        <li><strong>Cost-Effective:</strong> Using public transit is generally more affordable than owning and maintaining a personal vehicle.</li>\n        <li><strong>Less Traffic:</strong> Increased use of public transit can alleviate traffic congestion, making roads safer and travel more efficient.</li>\n        <li><strong>Health Benefits:</strong> Walking to and from transit stops increases physical activity and promotes a healthier lifestyle.</li>\n    </ul>\n    <h3>Tips for Using Public Transit</h3>\n    <ol>\n        <li><strong>Plan Your Route:</strong> Use transit apps and websites to plan your journey and find the best routes and schedules.</li>\n        <li><strong>Purchase Passes:</strong> Look for discounted transit passes and multi-ride tickets to save money on fares.</li>\n        <li><strong>Stay Informed:</strong> Keep up with transit news and updates to avoid delays and disruptions.</li>\n        <li><strong>Combine Trips:</strong> Combine errands and appointments to make the most of your trips on public transit.</li>\n    </ol>\n    <h3>Conclusion</h3>\n    <p>By choosing public transit over personal vehicles, you can contribute to a cleaner environment and enjoy numerous personal benefits. Embrace the convenience and sustainability of public transportation for a better tomorrow.</p>', NULL, 'Sustainable Transport', 'Using public transit is a sustainable choice that helps reduce carbon emissions from personal vehicles. Public transit systems, including buses, trains, and trams, offer efficient transportation solutions for daily commuting and travel. By opting for public transit, individuals contribute to alleviating traffic congestion and air pollution in urban areas. It promotes a more eco-friendly lifestyle by minimizing the environmental impact associated with individual car use. Additionally, using public transit can save money on fuel and parking costs while providing opportunities to relax, read, or work during the commute.'),
(21, 'Electric or hybrid vehicles', '<h2>Electric or Hybrid Vehicles</h2>\r\n    <p>Electric and hybrid vehicles offer a greener alternative to traditional gasoline-powered cars. These vehicles reduce dependence on fossil fuels and lower greenhouse gas emissions, making them an excellent choice for environmentally conscious drivers.</p>\r\n    <h3>Advantages of Electric and Hybrid Vehicles</h3>\r\n    <ul>\r\n        <li><strong>Lower Emissions:</strong> Electric vehicles (EVs) produce zero tailpipe emissions, while hybrids generate significantly fewer emissions than conventional cars.</li>\r\n        <li><strong>Fuel Savings:</strong> EVs eliminate the need for gasoline, and hybrids use less fuel, leading to substantial savings over time.</li>\r\n        <li><strong>Incentives and Rebates:</strong> Many governments offer incentives, tax credits, and rebates to encourage the purchase of electric and hybrid vehicles.</li>\r\n        <li><strong>Quiet Operation:</strong> EVs are much quieter than traditional cars, reducing noise pollution in urban areas.</li>\r\n    </ul>\r\n    <h3>Choosing the Right Vehicle</h3>\r\n    <ol>\r\n        <li><strong>Assess Your Needs:</strong> Determine whether an electric or hybrid vehicle suits your driving habits and lifestyle.</li>\r\n        <li><strong>Research Models:</strong> Compare different makes and models to find a vehicle that meets your performance, range, and budget requirements.</li>\r\n        <li><strong>Consider Charging Infrastructure:</strong> Ensure you have access to charging stations at home, work, and other frequent destinations.</li>\r\n        <li><strong>Test Drive:</strong> Take test drives to experience the differences in handling, acceleration, and features between electric, hybrid, and conventional vehicles.</li>\r\n    </ol>\r\n    <h3>Conclusion</h3>\r\n    <p>Electric and hybrid vehicles represent the future of sustainable transportation. By choosing these eco-friendly options, you can enjoy the benefits of reduced emissions, fuel savings, and a cleaner environment.</p>', NULL, 'Sustainable Transport', 'Electric and hybrid vehicles are innovative alternatives to traditional gasoline-powered cars, designed to reduce greenhouse gas emissions and dependency on fossil fuels. Electric vehicles (EVs) run entirely on electricity, emitting zero tailpipe emissions, making them ideal for reducing air pollution and contributing to cleaner air quality. Hybrid vehicles combine an electric motor with a gasoline engine, offering improved fuel efficiency and lower emissions compared to conventional vehicles. Switching to electric or hybrid vehicles supports sustainability efforts by lowering carbon footprints and promoting technological advancements in clean transportation solutions.'),
(22, 'Recycle materials', '<h2>Recycle Materials</h2>\r\n    <p>Recycling is a crucial practice that helps minimize landfill waste and conserve natural resources. By recycling materials like paper, glass, plastic, and metal, you can contribute to a healthier environment and reduce your ecological footprint.</p>\r\n    <h3>Benefits of Recycling</h3>\r\n    <ul>\r\n        <li><strong>Conserves Resources:</strong> Recycling reduces the need for raw materials, conserving natural resources such as timber, water, and minerals.</li>\r\n        <li><strong>Reduces Pollution:</strong> Manufacturing products from recycled materials requires less energy and produces fewer pollutants than using virgin materials.</li>\r\n        <li><strong>Decreases Landfill Waste:</strong> Recycling diverts waste from landfills, extending their lifespan and reducing the risk of environmental contamination.</li>\r\n        <li><strong>Economic Benefits:</strong> The recycling industry creates jobs and generates revenue through the sale of recycled materials.</li>\r\n    </ul>\r\n    <h3>How to Recycle Effectively</h3>\r\n    <ol>\r\n        <li><strong>Know What Can Be Recycled:</strong> Familiarize yourself with your local recycling guidelines to understand what materials are accepted.</li>\r\n        <li><strong>Separate Materials:</strong> Sort recyclable materials from non-recyclables to avoid contamination and ensure efficient processing.</li>\r\n        <li><strong>Clean and Dry:</strong> Rinse out food and beverage containers before recycling to prevent contamination.</li>\r\n        <li><strong>Use Recycling Bins:</strong> Place recyclable materials in designated bins and ensure they are correctly sorted according to local guidelines.</li>\r\n    </ol>\r\n    <h3>Conclusion</h3>\r\n    <p>Recycling is a simple yet impactful way to contribute to environmental sustainability. By making a habit of recycling, you can help conserve resources, reduce pollution, and create a cleaner, greener world for future generations.</p>', NULL, 'Waste Management', 'Recycling materials such as paper, glass, plastic, and metal is crucial for minimizing waste and conserving natural resources. Recycling reduces the amount of waste sent to landfills, which helps mitigate environmental pollution and greenhouse gas emissions. By sorting and recycling materials properly, individuals contribute to the circular economy, where materials are reused, repurposed, and recycled into new products. Recycling conserves energy and reduces the need for raw materials extraction, preserving natural habitats and ecosystems. It\'s a practical way to promote environmental stewardship and sustainable living practices in communities worldwide.'),
(23, 'Buy from sustainable brands', '<h2>Buy from Sustainable Brands</h2>\r\n    <p>Choosing to buy from sustainable brands is a powerful way to reduce your carbon footprint and support environmentally responsible practices. Sustainable brands prioritize ethical production methods, use eco-friendly materials, and implement practices that minimize their environmental impact.</p>\r\n    <h3>Why Support Sustainable Brands?</h3>\r\n    <ul>\r\n        <li><strong>Environmental Impact:</strong> Sustainable brands reduce waste, lower emissions, and conserve resources through eco-friendly practices.</li>\r\n        <li><strong>Ethical Production:</strong> These brands often ensure fair labor practices and better working conditions for their employees.</li>\r\n        <li><strong>Quality Products:</strong> Sustainable products are typically made to last longer, reducing the need for frequent replacements and minimizing waste.</li>\r\n        <li><strong>Positive Change:</strong> By supporting sustainable brands, you encourage other companies to adopt similar practices and contribute to broader environmental and social change.</li>\r\n    </ul>\r\n    <h3>How to Identify Sustainable Brands</h3>\r\n    <ol>\r\n        <li><strong>Research and Reviews:</strong> Look for brands that are transparent about their sourcing, manufacturing processes, and environmental impact.</li>\r\n        <li><strong>Certifications:</strong> Check for certifications such as Fair Trade, Organic, and B Corp, which indicate adherence to high environmental and social standards.</li>\r\n        <li><strong>Material Choices:</strong> Prefer products made from recycled, organic, or sustainably sourced materials.</li>\r\n        <li><strong>Company Values:</strong> Support companies that prioritize sustainability, social responsibility, and ethical business practices.</li>\r\n    </ol>\r\n    <h3>Conclusion</h3>\r\n    <p>By making conscious purchasing decisions and choosing sustainable brands, you can play a significant role in promoting environmental sustainability and ethical business practices. Your choices as a consumer have the power to drive positive change and contribute to a more sustainable future.</p>', NULL, 'Consumption', 'Buying from sustainable brands involves choosing products and services that prioritize environmental and social responsibility throughout their lifecycle. Sustainable brands focus on reducing carbon footprints, using eco-friendly materials, and supporting fair labor practices. By purchasing from sustainable brands, consumers support ethical business practices that aim to minimize environmental impact, conserve natural resources, and promote transparency in supply chains. Sustainable brands often innovate with renewable energy use, waste reduction strategies, and ethical sourcing to create products that align with eco-conscious consumer values. Choosing sustainable brands empowers individuals to make positive contributions toward a greener and more sustainable future.');

-- --------------------------------------------------------

--
-- Table structure for table `carbon_footprints`
--

CREATE TABLE `carbon_footprints` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `electricity_usage` decimal(10,2) DEFAULT NULL,
  `gas_usage` decimal(10,2) DEFAULT NULL,
  `mileage` decimal(10,2) DEFAULT NULL,
  `flight_hours` decimal(10,2) DEFAULT NULL,
  `total_footprint` decimal(10,2) DEFAULT NULL,
  `calculation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `carbon_footprints`
--

INSERT INTO `carbon_footprints` (`id`, `user_id`, `electricity_usage`, `gas_usage`, `mileage`, `flight_hours`, `total_footprint`, `calculation_date`) VALUES
(6, 23, 20.00, 20.00, 20.00, 0.00, 78.60, '2024-06-30'),
(7, 23, 20.00, 220.00, 20.00, 20.00, 100.67, '2024-06-30'),
(8, 23, 20.00, 220.00, 20.00, 20.00, 140.44, '2024-06-30'),
(9, 23, 10.00, 10.00, 30.00, 0.00, 42.90, '2024-06-30'),
(10, 23, 50.00, 20.00, 30.00, 2.00, 485.00, '2024-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `eco_incidents`
--

CREATE TABLE `eco_incidents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp(),
  `location` varchar(100) DEFAULT NULL,
  `media_url` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `eco_incidents`
--

INSERT INTO `eco_incidents` (`id`, `user_id`, `title`, `description`, `date_posted`, `location`, `media_url`, `user_name`) VALUES
(1, 22, 'Plastic Recycling Drive', 'Organized a community-driven plastic recycling event to reduce plastic waste in our neighborhood.', '2024-02-02 04:30:00', 'City Park', NULL, NULL),
(2, 22, 'Plastic Recycling Drive', 'Organized a community-driven plastic recycling event to reduce plastic waste in our neighborhood.\n\nits already conducted', '2024-06-30 08:44:33', 'new', 'new', NULL),
(3, 22, 'New Tree for our world', '\"Planting a new tree symbolizes hope and renewal, providing shade, shelter, and oxygen for generations to come, contributing to a greener, healthier, and more sustainable world.', '2024-06-30 11:03:58', 'new', 'new', 'Mark');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `event_type` varchar(50) DEFAULT NULL,
  `event_start` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `event_end` varchar(400) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `title`, `description`, `event_type`, `event_start`, `event_end`, `location`, `created_at`, `user_name`) VALUES
(1, 22, 'Sustainability Workshop', 'Join us for a workshop on sustainable living practices and how to reduce your carbon footprint.', 'Workshop', '2024-06-30 11:58:02', '2024-07-10 12:00:00', 'Community Center', '2024-06-30 06:47:04', 'mark'),
(2, 22, 'Water Management', 'Water management with some tips', 'Water Management', '2024-06-30 11:58:06', '31-07-2024', 'theni', '2024-06-30 08:31:43', 'mark'),
(3, 22, 'Water Management 2', 'Water management with some tips', 'Water Management', '2024-06-30 11:58:20', '31-07-2024', 'madhurai', '2024-06-30 11:03:35', 'Mark'),
(4, 23, 'Electric Support', 'promote the eco elecritcity', 'workship', '0000-00-00 00:00:00', '', '', '2024-06-30 12:29:00', 'Naveen');

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`id`, `user_id`, `title`, `description`, `category`, `status`, `created_at`, `user_name`) VALUES
(2, 22, 'Solar Panel Installation', 'Install solar panels on rooftops to reduce reliance on grid electricity and promote renewable energy.', 'Energy Efficiency', 'approved', '2024-05-01 04:30:00', NULL),
(3, 22, 'tree installation', 'Choose a location with suitable sunlight, soil, and space for the tree to grow.\n', 'Nature', 'approved', '2024-06-30 10:44:53', NULL),
(4, 22, 'New Tree', 'with new tree implement', 'Nature', 'approved', '2024-06-30 10:45:29', NULL),
(5, 22, 'Vertical Garden Wall', 'A vertical garden wall, also known as a living wall or green wall, is a beautiful and innovative way to bring nature indoors while promoting sustainability. This eco-friendly feature is a wall covered with plants, flowers, and greenery, which helps purify the air, improve acoustic insulation, and enhance aesthetic appeal.', 'Vertical Garden', 'approved', '2024-06-30 11:04:19', 'Mark');

-- --------------------------------------------------------

--
-- Table structure for table `recycling_centers`
--

CREATE TABLE `recycling_centers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `accepted_materials` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `recycling_centers`
--

INSERT INTO `recycling_centers` (`id`, `name`, `address`, `city`, `state`, `zip_code`, `contact_info`, `accepted_materials`) VALUES
(1, 'M/s A.K.Enterprises', 'No:12, Chakarapani Street, Velacherry', 'Chennai', 'Tamil Nadu', '600032', '9176664862, akenter06@gmail.com', '170 T/Annum, valid until 31.03.2026'),
(2, 'M/s Abishek Enterprises', 'SF No. 2G, North Phase, Ambattur', 'Chennai', 'Tamil Nadu', '600098', '9884057878, enterprisesabishek@gmail.com', '6000 T/Annum, valid until 30.11.2021'),
(3, 'M/s AER Worldwide India Pvt Ltd', 'SF No.774, Elandandheri, Sadayankuppam village, Manali New Town', 'Chennai', 'Tamil Nadu', '600103', '9940105999, jkumar@aerworldwide.com, akaja@aerworld.com', '12000 T/Annum, valid until 25.11.2024'),
(4, 'M/s Arockia Enterprises', 'S.F.No.4/1E, Seevaram village, Sholinganallur taluk', 'Chennai', 'Tamil Nadu', '600097', '9551044431, associates.grid@gmail.com', '216 T/Annum, valid until 31.03.2026'),
(5, 'M/s Ascent Urban Recyclers Pvt Limited', 'SF No.62/1B, 2A2, Padur Road, Mevalurkuppam village, Sriperumbudur taluk', 'Kancheepuram district', 'Tamil Nadu', '602105', '9790099016, santhosh@ascentedigit.com', '400 T/Annum, valid until 31.03.2026'),
(6, 'M/s Blooming Recyclers', 'Plot. No. D9/2, SIDCO Industrial Estate, Maraimalai Nagar, Kizhikaranai village, Chengalpattu district', 'Chennai', 'Tamil Nadu', NULL, '9840160149, bloomingrecycles@gmail.com', '730 T/Annum, valid until 31.03.2026'),
(7, 'M/s Earth Sense Recycle Private Limited', 'SF No. 247, Thenmelpakkam village, Chengalpattu taluk, Chengalpattu district', 'Chennai', 'Tamil Nadu', NULL, '9962222459, ewastechennai@earthsense.in', '4248 T/Annum, valid until 05.12.2024'),
(8, 'M/s Ecosible Recyclers Pvt Ltd', 'No.154A/B,8th Mahatma Gandhi Road, Tass Industrial Estate, Ambattur', 'Chennai', 'Tamil Nadu', '600098', '9500101738, Ravi.shastry@ecosible.com', '6000 T/Annum, valid until 31.03.2023'),
(9, 'M/s E PROCESS House c/o Bharat Electronics Limited', 'SF No 3 & 10/1 Nanthambakkam village, Alandur taluk, Chengalpattu district', 'Chennai', 'Tamil Nadu', NULL, '--', '435 T/Annum, valid until 24.03.2022'),
(10, 'M/s Enviro Green E_waste Recycling Solutions', 'SF No. 2134, Palur village, Chengalpattu taluk, Chengalpattu district', 'Chennai', 'Tamil Nadu', NULL, '9445050342, envirogreenewaste@gmail.com', '1900 T/Annum, valid until 31.03.2023'),
(11, 'M/s G S Enterprises', 'SF No: 254/2A2A, Mevalurkuppam village, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '9789092500, gsenterprises@gmail.com', '8400 T/Annum, valid until 27.01.2024'),
(12, 'M/s Green E Waste Private Limited', 'SF No. 294/pt, Ayanambakkam village, Poonamallee taluk, Tiruvallur district', 'Chennai', 'Tamil Nadu', NULL, '9566214845, stephen.greenewaste@gmail.com', '422 T/Annum, valid until 14.06.2025'),
(13, 'M/s Green Era Recyclers', 'SF No. 344/2, Kavundampalayam village, Coimbatore North taluk, Coimbatore district – 641 025', 'Coimbatore', 'Tamil Nadu', '641025', '9965664526, 8300223526, prasanth@thegreenera.in', '146 T/Annum, valid until 31.03.2022'),
(14, 'M/s Green India Recyclers', 'SF No. 26/1B, Kovilpalayam road, Soolakkal village, Kinathukadavu taluk, Coimbatore – 642 110', 'Coimbatore', 'Tamil Nadu', '642110', '9003491034, 9894940304, info@greenindiarecyclers.com', '456 T/Annum, valid until 31.03.2024'),
(15, 'M/s INAA Enterprises', 'DP No. AC-31/24, Thirumudivakkam village, Kundrathur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '9444446229, info@inaaenterprises.com', '300 T/Annum, valid until 31.03.2024'),
(16, 'M/s JADG India E-Waste Recyclers Pvt Ltd', 'SF No.256/1A1, Kollur village, Kilikodi post, Ponneri taluk, Tiruvallur district - 601206', 'Chennai', 'Tamil Nadu', '601206', '7373919322, jadgewaste@gmail.com', '600 T/Annum, valid until 16.03.2022'),
(17, 'M/s John Firm', 'SF No.144/1C2, Kerekodihalli village, Karimangalam taluk, Dharmapuri district', 'Chennai', 'Tamil Nadu', NULL, '7904574355, johnfirm2022@gmail.com', '300 T/Annum, valid until 31.03.2027'),
(18, 'M/s K.P.P enterprises', 'No. 535-3C, Santhavellore village, Sunguvarchatram post, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '9940858828, 82.sathya@gmail.com', '1000 T/Annum, valid until 30.03.2023'),
(19, 'M/s KGN Electronics', 'No.48 A, Dr Ambedkar College Road, Erukkenchery village, Perambur taluk, Chennai district', 'Chennai', 'Tamil Nadu', NULL, '9382600144, sonyfarooqzaid@gmail.com', '250 T/Annum, valid until 31.03.2027'),
(20, 'M/s Leela Traders', 'SF No. 41/1 part, Cuddaloor village, Chengalpattu taluk, Chengalpattu district', 'Chennai', 'Tamil Nadu', NULL, '9380888877, info@leelatraders.co.in, v.kumaran@hotmail.com', '2640 T/Annum, valid until 31.03.2023'),
(21, 'M/s Micro E–Waste Recyclers', 'No. 3/3B, Chennai Bye Pass Road, Senthaneerpuram, Trichy – 620 004', 'Trichy', 'Tamil Nadu', '620004', '9443141600, microrecyclers@yahoo.com', '900 T/Annum, valid until 17.08.2022'),
(22, 'M/s MG Traders', 'No. 86, Nehru Street, Teachers Colony, Ambattur, Chennai – 600053', 'Chennai', 'Tamil Nadu', NULL, '--', '600 T/Annum, valid until 12.01.2024'),
(23, 'M/s Ponniamman Enterprises', 'SF No. 216/3, Tiruvallur village, Tiruvallur taluk, Tiruvallur district', 'Chennai', 'Tamil Nadu', NULL, '9677462993, ponniammanenterprises@gmail.com', '12000 T/Annum, valid until 31.03.2023'),
(24, 'M/s Punithan Enterprises, Unit-II', 'No.113/19 Part, Rajiv Nagar, Perinjambakkam, Gunduperumbedu Post, Sirperumbudur taluk, Kancheepuram district, Pin – 601 301', 'Chennai', 'Tamil Nadu', '601301', '9840611027, punithanenterprises@gmail.com', '300 T/Annum, valid until 14.06.2025'),
(25, 'M/s R.M Computers', 'Plot No.229, 9th Street, Ambattur Chennai – 600098', 'Chennai', 'Tamil Nadu', '600098', '9094032959, rmcomputersin@gmail.com', '228 T/Annum, valid until 04.12.2024'),
(26, 'M/s RBIA Minerals and Metals Pvt Ltd', 'SF No. 205-1B2A, Kandur village, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '9444055770, rbiaminerals@gmail.com', '1400 T/Annum, valid until 23.04.2022'),
(27, 'M/s Sai Sri Waste Management Pvt Ltd', 'SF No 443/1B2, 443/2A, Padaveedu village, Kumarapalayam taluk, Kumarapalayam district', 'Chennai', 'Tamil Nadu', NULL, '9942429447, info@saiwaste.in', '1680 T/Annum, valid until 04.07.2026'),
(28, 'M/s SKV E-Waste Recycling Pvt Ltd', 'Plot No.154 A&B, Tass Industrial Area, Ambattur SIDCO Industrial Estate, Chennai – 600 098', 'Chennai', 'Tamil Nadu', '600098', '9094345145, info@skvewaste.com', '560 T/Annum, valid until 11.03.2026'),
(29, 'M/s S.P.P. Enterprises', 'S.No.184-4C, Mambakkam village, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '7299917239, sppenterprices@gmail.com', '1080 T/Annum, valid until 12.07.2023'),
(30, 'M/s Shri Raam Recycling', 'No.DP-29, SIDCO Industrial Estate, SIPCOT Industrial Complex, Gummidipoondi, Tiruvallur district Pin code– 601201', 'Chennai', 'Tamil Nadu', '601201', '9884499191, info@shriraamrecycling.com', '504 T/Annum, valid until 06.12.2022'),
(31, 'M/s Southern Alloys', 'Plot No. S –10 & 106, Putlur village, Tiruvallur taluk, Tiruvallur district', 'Chennai', 'Tamil Nadu', NULL, '9500038861, southernalloys@rediffmail.com', '540 T/Annum, valid until 17.01.2026'),
(32, 'M/s SEZ Recycling', 'TP-7, IVth Avenue, Mahendra World City Developers Limited, Industrial Estate, S.F.No. 42/1, 43,44, Thenmelpakkam Village, Chengalpattu Taluk, Kancheepuram District', 'Chennai', 'Tamil Nadu', NULL, '9790711555, akshay@sezrecycling.com', '1500 T/Annum, valid until 22.11.2022'),
(33, 'M/s Tharani Electronics Waste', 'SF No.381/3pt, 381/2pt, 384/2pt, 384/3 pt, Sarkar Samakulam village, Annur taluk, Coimbatore district', 'Coimbatore', 'Tamil Nadu', NULL, '9171450039, tharaniewast00@gmail.com', '207 T/Annum, valid until 31.03.2027'),
(34, 'M/s Trishyraya Recycling Private Limited', 'Plot No. 7, Phase – I, MEPZ-SEZ, Tambaram, Chennai – 600 045', 'Chennai', 'Tamil Nadu', '600045', '9840897125, subash.warrier@simsmm.com', '3100 T/Annum, valid until 03.07.2024'),
(35, 'M/s Tritech Systems', 'SF No.165, Porur village, Maduravoyal taluk, Chennai – 600 116', 'Chennai', 'Tamil Nadu', '600116', '9003077866, tri-abdullah@yahoo.com', '424 T/Annum, valid until 31.03.2027'),
(36, 'M/s Udhaya Traders', 'No:242, Tiny Sector Ambattur Industrial Estate, Chennai – 600 058', 'Chennai', 'Tamil Nadu', '600058', '7397438071, udhayatraders2011@gmail.com', '84 T/Annum, valid until 31.03.2026'),
(37, 'M/s Virogreen India Pvt Ltd', 'SF No.297/1B2, No.49, Pappankuppam village, SR Kandigai Road, Gummidipoondi taluk, Tiruvallur district. Pin -601 201', 'Chennai', 'Tamil Nadu', '601201', '9940615444, selvam@virogreen.in', '15000 T/Annum, valid until 01-03-2027'),
(38, 'M/s World Scrap Recycling Solution', 'SF No.351/7, Beemanthangal village, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '8778458025, worldscraprecycling@gmail.com', '720 T/Annum, valid until 24.02.2021'),
(39, 'M/s Enviro Metals Recyclers Private Limited', 'SF No. 104 and 106, Ezichur village, Sriperumbudur taluk, Kancheepuram district', NULL, 'Tamil Nadu', NULL, '9789968030, anbu@ensenviro.com', '12000 T/Annum, valid until 03.12.2024'),
(40, 'M/s TES-AMM India Pvt Ltd', 'Plot No. A18, SIPCOT Industrial Growth Centre, Oragadam, Sriperumbudur Kancheepuram district', NULL, 'Tamil Nadu', NULL, '9500064318 & 9176755506, kishorekumar.s@tes-amm.net', '30000 T/Annum, valid until 14.08.2021'),
(41, 'M/s Victory Recovery and Recycle Technologies India Private Limited', 'Kannur village, Tiruvallur taluk, Tiruvallur district', NULL, 'Tamil Nadu', NULL, '9444917895, ravimangalam@victoryrecovery.in', '100 T/Annum, valid until 30.08.2022'),
(42, 'M/s Virogreen India Pvt. Ltd', 'SF No.297/1B2, No.49, Pappankuppam village, SR Kandigai Road, Gummidipoondi taluk, Tiruvallur district - 601201', NULL, 'Tamil Nadu', '601201', '9940615444, selvam@virogreen.in', '15000 T/Annum, valid until 01.03.2027'),
(43, 'M/s. Tritech Systems', 'No.26, Arcot Road, Porur, Chennai-600 116', 'Chennai', 'Tamil Nadu', '600116', '044 – 42617179, 9003077866, triabdullah@yahoo.com', '31.03.2023'),
(44, 'M/s. Aer World Wide', '2B, 2C, 2D, 2E, Elanthanjeri Village, Madhavaram Taluk, Tiruvallur', NULL, 'Tamil Nadu', NULL, NULL, '31.03.2023'),
(45, 'M/s. Green E Waste', 'No.33, Geazon, Aynambakkam Housing colony, Ayanamabakkam Village, Ambattur, Chennai – 95', 'Chennai', 'Tamil Nadu', '600095', '044-26534690, 7200185121, parvez@greenewaste.in', '09.12.2019'),
(46, 'M/s. Abishek enterprises', 'S. F. No. 2G, 2NP, Ambattur, Chennai – 600 098', 'Chennai', 'Tamil Nadu', '600098', '044-23637878, 9884057878, enterprisesabishek@gmail.com', '31.03.2021'),
(47, 'M/s. JADG India E-Waste Recyclers Pvt. Ltd.', 'No.1, Kollur Village, Ponneri Taluk, Tiruvallur-601206', 'Tiruvallur', 'Tamil Nadu', '601206', '044-27925234, 9840969739, jadgewast@gmail.com', '16.03.2022'),
(48, 'M/s. Shri Raam Recycling', '333 to 337 Part, Papankuppam Village, Shed No. DP-29, Phase IV & V, SIDCO Industrial Estate, Gummidipoondi Taluk, Tiruvallur District -601 201', 'Gummidipoondi', 'Tamil Nadu', '601201', '044 – 29020373, 9884499191, info@shriraamrecyling.com', '06.12.2022'),
(49, 'M/s. Virogreen India Pvt. Ltd.', 'No.297/1B2, Pappankuppam Village, SR Kandigai Road, S.R.Kandigai PO, Gummidipoondi Taluk, Tiruvallur District – 601 201', 'Gummidipoondi', 'Tamil Nadu', '601201', '044 – 65485915, 9940648444, muthu@virogreen.in', '31.03.2021'),
(50, 'M/s. Trishyiraya Recycling India Pvt. Ltd', 'Plot No. A-7, Phase –I, MEPZ-SEZ, Tambaram, Chennai – 600 045', 'Chennai', 'Tamil Nadu', '600045', '044 - 22628067, 9840897125, naveen.prakash@simsmm.com', '31.03.2023'),
(51, 'M/s. K.S. Traders', 'Thiruneermalai Village, Alandur Taluk, Kancheepuram Dt.', NULL, 'Tamil Nadu', NULL, NULL, '26.01.2019'),
(52, 'M/s. SEZ Recycling', 'TP-7, IVth Avenue, Mahindra World City Developers Limited, Industrial Estate, SEZ Area, Thenmelpakkam Village, Chengalpattu Taluk, Kancheepuram District. – 603 209', 'Chengalpattu', 'Tamil Nadu', '603209', '044 – 25322992, 9790711555, akshay@sezrecycling.com', '22.11.2022'),
(53, 'M/s. Leela Traders', 'Plot No:C-15/1, CMDA Industrial Complex, MM Nagar, Chengalpattu Taluk, Kancheepuram District – 603 209', 'Chengalpattu', 'Tamil Nadu', '603209', '9380888811, 044 - 28420404, v.kumaran@hotmail.com', '31.03.2023'),
(54, 'M/s. Enviro Metals Recyclers Pvt.Ltd', 'SF.No.104 &106, Ezhichur Village, Oragadam, Sriperumbudur Taluk, Kancheepuram District – 603 204', 'Kancheepuram', 'Tamil Nadu', '603204', '044 – 27107223, 9943076126, ckenviro@ensenviro.com', '11.03.2019 (Under process at district office)'),
(55, 'M/s. Gems Recycling (P) Ltd.', 'R.S. No. 222/3, 4(P), Neervallur Village, Kancheepuram Distric – 631 561', NULL, 'Tamil Nadu', '631561', '9380111434, contrct@globalwastemanagement.com, mannar@globalwastemanagement.com', '31.03.2022'),
(56, 'M/s. INAA Enterprises', 'DP No. AC 31/24, SIDCO Industrial Estate, Thirumudivakkam Village, Sriperumbudur Taluk, Kancheepuram District – 600 044', NULL, 'Tamil Nadu', '600044', '9444446229, info@inaaenterprises.com', '15.02.2020'),
(57, 'M/s. World Scrap Stars Recycling Solutions Pvt.Ltd.', 'No.3, Golden star Apartments, 5s Thandalam village, Sriperumbudur Taluk, Kancheepuram District', NULL, 'Tamil Nadu', NULL, NULL, '02.03.2020'),
(58, 'M/s. Victory Recovery & Recycle Technologies India Private Limited', 'No. 672/2 Double Dragon Industrial Park, Kannur Village and Post, Kottaiyur Taluk, Tiruvallur District', 'Tiruvallur', 'Tamil Nadu', NULL, '044 – 27699855, 9551693935, jp@victoryrecovery.com', '03.08.2022'),
(59, 'M/s. Southern Alloys', 'DP. No. S-105 and106, SIDCO Industrial Estate, Kakallur Village, Tiruvallur Taluk and District – 602 003', 'Tiruvallur', 'Tamil Nadu', '602003', '044 – 42118862, 9500038861, southernalloys@rediffmail.com', '06.09.2020'),
(60, 'M/s. Micro E-Waste Recyclers', 'S.F No. 301/3, Varaganeri village, Trichy east Taluk, Trichy District', 'Trichy', 'Tamil Nadu', NULL, '9171450039, tharaniewast00@gmail.com', '17.08.2022'),
(61, 'M/s. Green India Recyclers', 'SF. No. 26/1B, Kovilpalayam Road, Soolakal Village, Kinathukadavu Taluk, Coimbatore District – 642 110', 'Coimbatore', 'Tamil Nadu', '642110', '9003491034, info@greenindiarecyclers.com', '07.12.2022'),
(62, 'M/s. Green Era Recyclers', '37, Sivanandha Industrial Complex, Dr. M.S. Udhayamurthy Nagar, Thadagam Road, Edayarpalayam, Coimbatore District-641 025', 'Coimbatore', 'Tamil Nadu', '641025', '9965664526, greenera2k17@gmail.com, prashkuttan@gmail.com', '31.03.2022'),
(63, 'M/s. S.P.P. Enterprises', 'S.F.No. 184/4C, Mambakkam village, Sriperumpudur Taluk, Kancheepuram District – 602 106', 'Kancheepuram', 'Tamil Nadu', '602106', '044-27169088, 044-27169111, sppenterprices@gmail.com, info@sppenterprises.in', '12.07.2023'),
(64, 'M/s. A.K Enterprises', 'No.12, Chakarapani Street, Velachery, Chennai-600032', 'Chennai', 'Tamil Nadu', '600032', '9176664862, akenter06@gmail.com', '15.03.2021'),
(65, 'M/s G S Enterprises', 'SF No: 254/2A2A, Mevalurkuppam village, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '9789092500, gsenterprises@gmail.com', '8400 T/Annum, valid until 27.01.2024'),
(66, 'M/s Green E Waste Private Limited', 'SF No. 294/pt, Ayanambakkam village, Poonamallee taluk, Tiruvallur district', 'Chennai', 'Tamil Nadu', NULL, '9566214845, stephen.greenewaste@gmail.com', '422 T/Annum, valid until 14.06.2025'),
(67, 'M/s Green Era Recyclers', 'SF No. 344/2, Kavundampalayam village, Coimbatore North taluk, Coimbatore district – 641 025', 'Coimbatore', 'Tamil Nadu', '641025', '9965664526, 8300223526, prasanth@thegreenera.in', '146 T/Annum, valid until 31.03.2022'),
(68, 'M/s Green India Recyclers', 'SF No. 26/1B, Kovilpalayam road, Soolakkal village, Kinathukadavu taluk, Coimbatore – 642 110', 'Coimbatore', 'Tamil Nadu', '642110', '9003491034, 9894940304, info@greenindiarecyclers.com', '456 T/Annum, valid until 31.03.2024'),
(69, 'M/s INAA Enterprises', 'DP No. AC-31/24, Thirumudivakkam village, Kundrathur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '9444446229, info@inaaenterprises.com', '300 T/Annum, valid until 31.03.2024'),
(70, 'M/s JADG India E-Waste Recyclers Pvt Ltd', 'SF No.256/1A1, Kollur village, Kilikodi post, Ponneri taluk, Tiruvallur district - 601206', 'Chennai', 'Tamil Nadu', '601206', '7373919322, jadgewaste@gmail.com', '600 T/Annum, valid until 16.03.2022'),
(71, 'M/s John Firm', 'SF No.144/1C2, Kerekodihalli village, Karimangalam taluk, Dharmapuri district', 'Chennai', 'Tamil Nadu', NULL, '7904574355, johnfirm2022@gmail.com', '300 T/Annum, valid until 31.03.2027'),
(72, 'M/s K.P.P enterprises', 'No. 535-3C, Santhavellore village, Sunguvarchatram post, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '9940858828, 82.sathya@gmail.com', '1000 T/Annum, valid until 30.03.2023'),
(73, 'M/s KGN Electronics', 'No.48 A, Dr Ambedkar College Road, Erukkenchery village, Perambur taluk, Chennai district', 'Chennai', 'Tamil Nadu', NULL, '9382600144, sonyfarooqzaid@gmail.com', '250 T/Annum, valid until 31.03.2027'),
(74, 'M/s Leela Traders', 'SF No. 41/1 part, Cuddaloor village, Chengalpattu taluk, Chengalpattu district', 'Chennai', 'Tamil Nadu', NULL, '9380888877, info@leelatraders.co.in, v.kumaran@hotmail.com', '2640 T/Annum, valid until 31.03.2023'),
(75, 'M/s Micro E–Waste Recyclers', 'No. 3/3B, Chennai Bye Pass Road, Senthaneerpuram, Trichy – 620 004', 'Trichy', 'Tamil Nadu', '620004', '9443141600, microrecyclers@yahoo.com', '900 T/Annum, valid until 17.08.2022'),
(76, 'M/s MG Traders', 'No. 86, Nehru Street, Teachers Colony, Ambattur, Chennai – 600053', 'Chennai', 'Tamil Nadu', NULL, '--', '600 T/Annum, valid until 12.01.2024'),
(77, 'M/s Ponniamman Enterprises', 'SF No. 216/3, Tiruvallur village, Tiruvallur taluk, Tiruvallur district', 'Chennai', 'Tamil Nadu', NULL, '9677462993, ponniammanenterprises@gmail.com', '12000 T/Annum, valid until 31.03.2023'),
(78, 'M/s Punithan Enterprises, Unit-II', 'No.113/19 Part, Rajiv Nagar, Perinjambakkam, Gunduperumbedu Post, Sirperumbudur taluk, Kancheepuram district, Pin – 601 301', 'Chennai', 'Tamil Nadu', '601301', '9840611027, punithanenterprises@gmail.com', '300 T/Annum, valid until 14.06.2025'),
(79, 'M/s R.M Computers', 'Plot No.229, 9th Street, Ambattur Chennai – 600098', 'Chennai', 'Tamil Nadu', '600098', '9094032959, rmcomputersin@gmail.com', '228 T/Annum, valid until 04.12.2024'),
(80, 'M/s RBIA Minerals and Metals Pvt Ltd', 'SF No. 205-1B2A, Kandur village, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '9444055770, rbiaminerals@gmail.com', '1400 T/Annum, valid until 23.04.2022'),
(81, 'M/s Sai Sri Waste Management Pvt Ltd', 'SF No 443/1B2, 443/2A, Padaveedu village, Kumarapalayam taluk, Kumarapalayam district', 'Chennai', 'Tamil Nadu', NULL, '9942429447, info@saiwaste.in', '1680 T/Annum, valid until 04.07.2026'),
(82, 'M/s SKV E-Waste Recycling Pvt Ltd', 'Plot No.154 A&B, Tass Industrial Area, Ambattur SIDCO Industrial Estate, Chennai – 600 098', 'Chennai', 'Tamil Nadu', '600098', '9094345145, info@skvewaste.com', '560 T/Annum, valid until 11.03.2026'),
(83, 'M/s S.P.P. Enterprises', 'S.No.184-4C, Mambakkam village, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '7299917239, sppenterprices@gmail.com', '1080 T/Annum, valid until 12.07.2023'),
(84, 'M/s Shri Raam Recycling', 'No.DP-29, SIDCO Industrial Estate, SIPCOT Industrial Complex, Gummidipoondi, Tiruvallur district Pin code– 601201', 'Chennai', 'Tamil Nadu', '601201', '9884499191, info@shriraamrecycling.com', '504 T/Annum, valid until 06.12.2022'),
(85, 'M/s Southern Alloys', 'Plot No. S –10 & 106, Putlur village, Tiruvallur taluk, Tiruvallur district', 'Chennai', 'Tamil Nadu', NULL, '9500038861, southernalloys@rediffmail.com', '540 T/Annum, valid until 17.01.2026'),
(86, 'M/s SEZ Recycling', 'TP-7, IVth Avenue, Mahendra World City Developers Limited, Industrial Estate, S.F.No. 42/1, 43,44, Thenmelpakkam Village, Chengalpattu Taluk, Kancheepuram District', 'Chennai', 'Tamil Nadu', NULL, '9790711555, akshay@sezrecycling.com', '1500 T/Annum, valid until 22.11.2022'),
(87, 'M/s Tharani Electronics Waste', 'SF No.381/3pt, 381/2pt, 384/2pt, 384/3 pt, Sarkar Samakulam village, Annur taluk, Coimbatore district', 'Coimbatore', 'Tamil Nadu', NULL, '9171450039, tharaniewast00@gmail.com', '207 T/Annum, valid until 31.03.2027'),
(88, 'M/s Trishyraya Recycling Private Limited', 'Plot No. 7, Phase – I, MEPZ-SEZ, Tambaram, Chennai – 600 045', 'Chennai', 'Tamil Nadu', '600045', '9840897125, subash.warrier@simsmm.com', '3100 T/Annum, valid until 03.07.2024'),
(89, 'M/s Tritech Systems', 'SF No.165, Porur village, Maduravoyal taluk, Chennai – 600 116', 'Chennai', 'Tamil Nadu', '600116', '9003077866, tri-abdullah@yahoo.com', '424 T/Annum, valid until 31.03.2027'),
(90, 'M/s Udhaya Traders', 'No:242, Tiny Sector Ambattur Industrial Estate, Chennai – 600 058', 'Chennai', 'Tamil Nadu', '600058', '7397438071, udhayatraders2011@gmail.com', '84 T/Annum, valid until 31.03.2026'),
(91, 'M/s Virogreen India Pvt Ltd', 'SF No.297/1B2, No.49, Pappankuppam village, SR Kandigai Road, Gummidipoondi taluk, Tiruvallur district. Pin -601 201', 'Chennai', 'Tamil Nadu', '601201', '9940615444, selvam@virogreen.in', '15000 T/Annum, valid until 01-03-2027'),
(92, 'M/s World Scrap Recycling Solution', 'SF No.351/7, Beemanthangal village, Sriperumbudur taluk, Kancheepuram district', 'Chennai', 'Tamil Nadu', NULL, '8778458025, worldscraprecycling@gmail.com', '720 T/Annum, valid until 24.02.2021'),
(93, 'M/s Enviro Metals Recyclers Private Limited', 'SF No. 104 and 106, Ezichur village, Sriperumbudur taluk, Kancheepuram district', NULL, 'Tamil Nadu', NULL, '9789968030, anbu@ensenviro.com', '12000 T/Annum, valid until 03.12.2024'),
(94, 'M/s TES-AMM India Pvt Ltd', 'Plot No. A18, SIPCOT Industrial Growth Centre, Oragadam, Sriperumbudur Kancheepuram district', NULL, 'Tamil Nadu', NULL, '9500064318 & 9176755506, kishorekumar.s@tes-amm.net', '30000 T/Annum, valid until 14.08.2021'),
(95, 'M/s Victory Recovery and Recycle Technologies India Private Limited', 'Kannur village, Tiruvallur taluk, Tiruvallur district', NULL, 'Tamil Nadu', NULL, '9444917895, ravimangalam@victoryrecovery.in', '100 T/Annum, valid until 30.08.2022'),
(96, 'M/s Virogreen India Pvt. Ltd', 'SF No.297/1B2, No.49, Pappankuppam village, SR Kandigai Road, Gummidipoondi taluk, Tiruvallur district - 601201', NULL, 'Tamil Nadu', '601201', '9940615444, selvam@virogreen.in', '15000 T/Annum, valid until 01.03.2027'),
(97, 'M/s. Tritech Systems', 'No.26, Arcot Road, Porur, Chennai-600 116', 'Chennai', 'Tamil Nadu', '600116', '044 – 42617179, 9003077866, triabdullah@yahoo.com', '31.03.2023'),
(98, 'M/s. Aer World Wide', '2B, 2C, 2D, 2E, Elanthanjeri Village, Madhavaram Taluk, Tiruvallur', NULL, 'Tamil Nadu', NULL, NULL, '31.03.2023'),
(99, 'M/s. Green E Waste', 'No.33, Geazon, Aynambakkam Housing colony, Ayanamabakkam Village, Ambattur, Chennai – 95', 'Chennai', 'Tamil Nadu', '600095', '044-26534690, 7200185121, parvez@greenewaste.in', '09.12.2019'),
(100, 'M/s. Abishek enterprises', 'S. F. No. 2G, 2NP, Ambattur, Chennai – 600 098', 'Chennai', 'Tamil Nadu', '600098', '044-23637878, 9884057878, enterprisesabishek@gmail.com', '31.03.2021'),
(101, 'M/s. JADG India E-Waste Recyclers Pvt. Ltd.', 'No.1, Kollur Village, Ponneri Taluk, Tiruvallur-601206', 'Tiruvallur', 'Tamil Nadu', '601206', '044-27925234, 9840969739, jadgewast@gmail.com', '16.03.2022'),
(102, 'M/s. Shri Raam Recycling', '333 to 337 Part, Papankuppam Village, Shed No. DP-29, Phase IV & V, SIDCO Industrial Estate, Gummidipoondi Taluk, Tiruvallur District -601 201', 'Gummidipoondi', 'Tamil Nadu', '601201', '044 – 29020373, 9884499191, info@shriraamrecyling.com', '06.12.2022'),
(103, 'M/s. Virogreen India Pvt. Ltd.', 'No.297/1B2, Pappankuppam Village, SR Kandigai Road, S.R.Kandigai PO, Gummidipoondi Taluk, Tiruvallur District – 601 201', 'Gummidipoondi', 'Tamil Nadu', '601201', '044 – 65485915, 9940648444, muthu@virogreen.in', '31.03.2021'),
(104, 'M/s. Trishyiraya Recycling India Pvt. Ltd', 'Plot No. A-7, Phase –I, MEPZ-SEZ, Tambaram, Chennai – 600 045', 'Chennai', 'Tamil Nadu', '600045', '044 - 22628067, 9840897125, naveen.prakash@simsmm.com', '31.03.2023'),
(105, 'M/s. K.S. Traders', 'Thiruneermalai Village, Alandur Taluk, Kancheepuram Dt.', NULL, 'Tamil Nadu', NULL, NULL, '26.01.2019'),
(106, 'M/s. SEZ Recycling', 'TP-7, IVth Avenue, Mahindra World City Developers Limited, Industrial Estate, SEZ Area, Thenmelpakkam Village, Chengalpattu Taluk, Kancheepuram District. – 603 209', 'Chengalpattu', 'Tamil Nadu', '603209', '044 – 25322992, 9790711555, akshay@sezrecycling.com', '22.11.2022'),
(107, 'M/s. Leela Traders', 'Plot No:C-15/1, CMDA Industrial Complex, MM Nagar, Chengalpattu Taluk, Kancheepuram District – 603 209', 'Chengalpattu', 'Tamil Nadu', '603209', '9380888811, 044 - 28420404, v.kumaran@hotmail.com', '31.03.2023'),
(108, 'M/s. Enviro Metals Recyclers Pvt.Ltd', 'SF.No.104 &106, Ezhichur Village, Oragadam, Sriperumbudur Taluk, Kancheepuram District – 603 204', 'Kancheepuram', 'Tamil Nadu', '603204', '044 – 27107223, 9943076126, ckenviro@ensenviro.com', '11.03.2019 (Under process at district office)'),
(109, 'M/s. Gems Recycling (P) Ltd.', 'R.S. No. 222/3, 4(P), Neervallur Village, Kancheepuram Distric – 631 561', NULL, 'Tamil Nadu', '631561', '9380111434, contrct@globalwastemanagement.com, mannar@globalwastemanagement.com', '31.03.2022'),
(110, 'M/s. INAA Enterprises', 'DP No. AC 31/24, SIDCO Industrial Estate, Thirumudivakkam Village, Sriperumbudur Taluk, Kancheepuram District – 600 044', NULL, 'Tamil Nadu', '600044', '9444446229, info@inaaenterprises.com', '15.02.2020'),
(111, 'M/s. World Scrap Stars Recycling Solutions Pvt.Ltd.', 'No.3, Golden star Apartments, 5s Thandalam village, Sriperumbudur Taluk, Kancheepuram District', NULL, 'Tamil Nadu', NULL, NULL, '02.03.2020'),
(112, 'M/s. Victory Recovery & Recycle Technologies India Private Limited', 'No. 672/2 Double Dragon Industrial Park, Kannur Village and Post, Kottaiyur Taluk, Tiruvallur District', 'Tiruvallur', 'Tamil Nadu', NULL, '044 – 27699855, 9551693935, jp@victoryrecovery.com', '03.08.2022'),
(113, 'M/s. Southern Alloys', 'DP. No. S-105 and106, SIDCO Industrial Estate, Kakallur Village, Tiruvallur Taluk and District – 602 003', 'Tiruvallur', 'Tamil Nadu', '602003', '044 – 42118862, 9500038861, southernalloys@rediffmail.com', '06.09.2020'),
(114, 'M/s. Micro E-Waste Recyclers', 'S.F No. 301/3, Varaganeri village, Trichy east Taluk, Trichy District', 'Trichy', 'Tamil Nadu', NULL, '9171450039, tharaniewast00@gmail.com', '17.08.2022'),
(115, 'M/s. Green India Recyclers', 'SF. No. 26/1B, Kovilpalayam Road, Soolakal Village, Kinathukadavu Taluk, Coimbatore District – 642 110', 'Coimbatore', 'Tamil Nadu', '642110', '9003491034, info@greenindiarecyclers.com', '07.12.2022'),
(116, 'M/s. Green Era Recyclers', '37, Sivanandha Industrial Complex, Dr. M.S. Udhayamurthy Nagar, Thadagam Road, Edayarpalayam, Coimbatore District-641 025', 'Coimbatore', 'Tamil Nadu', '641025', '9965664526, greenera2k17@gmail.com, prashkuttan@gmail.com', '31.03.2022'),
(117, 'M/s. S.P.P. Enterprises', 'S.F.No. 184/4C, Mambakkam village, Sriperumpudur Taluk, Kancheepuram District – 602 106', 'Kancheepuram', 'Tamil Nadu', '602106', '044-27169088, 044-27169111, sppenterprices@gmail.com, info@sppenterprises.in', '12.07.2023'),
(118, 'M/s. A.K Enterprises', 'No.12, Chakarapani Street, Velachery, Chennai-600032', 'Chennai', 'Tamil Nadu', '600032', '9176664862, akenter06@gmail.com', '15.03.2021'),
(119, 'Micro E-Waste Recyclers', 'S.F No. 301/3, Varaganeri village, Trichy east Taluk, Trichy District', 'Tiruchirappalli', 'Tamil Nadu', '620 008', '', ''),
(120, 'Green India Recyclers', 'SF. No. 26/1B, Kovilpalayam Road, Soolakal Village, Kinathukadavu Taluk, Coimbatore District', 'Coimbatore', 'Tamil Nadu', '642 110', '9003491034', 'info@greenindiarecyclers.com'),
(121, 'Green Era Recyclers', '37, Sivanandha Industrial Complex, Dr. M.S. Udhayamurthy Nagar, Thadagam Road, Edayarpalayam, Coimbatore District', 'Coimbatore', 'Tamil Nadu', '641 025', '9965664526', 'greenera2k17@gmail.com, prashkuttan@gmail.com'),
(122, 'Gem Recycling (P) Ltd', 'R.S. No. 222/3, 4(P), Neervallur Village, Kancheepuram District', 'Madurai', 'Tamil Nadu', '631 561', '9380111434', 'contrct@globalwastemanagement.com, mannar@globalwastemanagement.com'),
(123, 'SKV E-Waste Recycling Pvt Ltd', 'Plot No.154 A&B, Tass Industrial Area, Ambattur SIDCO Industrial Estate, Chennai', 'Chennai', 'Tamil Nadu', '600 098', '9094345145', 'info@skvewaste.com'),
(124, 'Tritech Systems', 'SF No.165, Porur village, Maduravoyal taluk, Chennai', 'Chennai', 'Tamil Nadu', '600 116', '9003077866', 'triabdullah@yahoo.com'),
(125, 'SEZ Recycling', 'TP-7, IVth Avenue, Mahendra World City Developers Limited, Industrial Estate, S.F.No. 42/1, 43,44, Thenmelpakkam Village, Chengalpattu Taluk, Kancheepuram District', 'Chengalpattu', 'Tamil Nadu', '603 002', '9790711555', 'akshay@sezrecycling.com'),
(126, 'World Scrap Recycling Solution', 'SF No.351/7, Beemanthangal village, Sriperumbudur taluk, Kancheepuram district', 'Sriperumbudur', 'Tamil Nadu', '602 106', '8778458025', 'worldscraprecycling@gmail.com'),
(127, 'S.P.P. Enterprises', 'S.No.184-4C, Mambakkam village, Sriperumbudur taluk, Kancheepuram district', 'Mambakkam', 'Tamil Nadu', '601 201', '7299917239', 'sppenterprices@gmail.com'),
(128, 'Virogreen India Pvt Ltd', 'SF No.297/1B2, No.49, Pappankuppam village, SR Kandigai Road, Gummidipoondi taluk, Tiruvallur district', 'Gummidipoondi', 'Tamil Nadu', '601 201', '9940615444', 'selvam@virogreen.in'),
(129, 'Eco Recycling Ltd.', 'Eco-House, Near Top Glass Enclave, Bhoipada, Near Range Office, Sativali Road, Vasai (E), Dist. Palghar', 'Mumbai', 'Maharashtra', '401 208', '', ''),
(130, 'E-Incarnation Recycling Pvt. Ltd.', 'Plot No. J-56, MIDC Area, Tarapur, Boiser, Dist: Palgar, Maharashtra - 401506', 'Mumbai', 'Maharashtra', '401 506', '2266251300', 'info@eincarnation.com'),
(131, 'Evergreen Recyclekaro India Pvt. Ltd.', 'Gut. No. 113/A, Village Pali, Tal. Wada, Dist. Palghar', 'Mumbai', 'Maharashtra', '401 401', '9967310007', 'rajesh@recyclekaro.com'),
(132, 'Hi-Tech Recycling (I) Pvt. Ltd.', 'Property No.193, Gat No. 89, Pune-Satara Road, Shindewadi, Tal: Bhor, Dist:- Pune', 'Mumbai', 'Maharashtra', '412 205', '9860602601', 'manish@hitechrecycling.in'),
(133, 'Justdispose Recycling Pvt Ltd. (Unit-II)', 'S.No. 42/5, Kaddu Industrial Estate, Sativali Phata, Vasai (E), Tal-Vasai, Dist. Palghar', 'Mumbai', 'Maharashtra', '401 208', '9833030124', 'hemant@justdispose.com'),
(134, 'Green India Recyclers', 'SF. No. 26/1B, Kovilpalayam Road, Soolakal Village, Kinathukadavu Taluk, Coimbatore District – 642 110', 'Delhi', 'Delhi', '110001', '9003491034', 'info@greenindiarecyclers.com'),
(135, 'Green Era Recyclers', '37, Sivanandha Industrial Complex, Dr. M.S. Udhayamurthy Nagar, Thadagam Road, Edayarpalayam, Coimbatore District-641 025', 'Delhi', 'Delhi', '110002', '9965664526', 'greenera2k17@gmail.com, prashkuttan@gmail.com'),
(136, 'Gem Recycling (P) Ltd', 'R.S. No. 222/3, 4(P), Neervallur Village, Kancheepuram District – 631 561', 'Delhi', 'Delhi', '110003', '9380111434', 'contrct@globalwastemanagement.com, mannar@globalwastemanagement.com'),
(137, 'SKV E-Waste Recycling Pvt Ltd', 'Plot No.154 A&B, Tass Industrial Area, Ambattur SIDCO Industrial Estate, Chennai – 600 098', 'Delhi', 'Delhi', '110004', '9094345145', 'info@skvewaste.com'),
(138, 'E-Waste Recycling Pvt Ltd', 'Plot No. 52, Survey No. 78, IDA Mallapur, Hyderabad', 'Hyderabad', 'Telangana', '500076', '9876543210', 'info@ewasterecycling.com'),
(139, 'GreenTech Recyclers', 'D.No. 10-5-7/1, Masab Tank, Hyderabad', 'Hyderabad', 'Telangana', '500028', '9988776655', 'contact@greentechrecyclers.com'),
(140, 'Clean Earth Recycling', 'Plot No. 34, Survey No. 102, Hafeezpet, Hyderabad', 'Hyderabad', 'Telangana', '500049', '9998887776', 'info@cleanearthrecycling.in'),
(141, 'EcoGreen Recyclers', 'Survey No. 15, Opp. Cyber Towers, HITEC City, Hyderabad', 'Hyderabad', 'Telangana', '500081', '9966332211', 'info@ecogreenrecyclers.com'),
(142, 'Green India Recyclers', 'SF. No. 26/1B, Kovilpalayam Road, Soolakal Village, Kinathukadavu Taluk, Coimbatore District – 642 110', 'Bengaluru', 'Karnataka', '560001', '9003491034', 'info@greenindiarecyclers.com'),
(143, 'Green Era Recyclers', '37, Sivanandha Industrial Complex, Dr. M.S. Udhayamurthy Nagar, Thadagam Road, Edayarpalayam, Coimbatore District-641 025', 'Bengaluru', 'Karnataka', '560002', '9965664526', 'greenera2k17@gmail.com, prashkuttan@gmail.com'),
(144, 'Gem Recycling (P) Ltd', 'R.S. No. 222/3, 4(P), Neervallur Village, Kancheepuram District – 631 561', 'Bengaluru', 'Karnataka', '560003', '9380111434', 'contrct@globalwastemanagement.com, mannar@globalwastemanagement.com'),
(145, 'SKV E-Waste Recycling Pvt Ltd', 'Plot No.154 A&B, Tass Industrial Area, Ambattur SIDCO Industrial Estate, Chennai – 600 098', 'Bengaluru', 'Karnataka', '560004', '9094345145', 'info@skvewaste.com'),
(146, 'Green Recyclers', 'Plot No. 15, Sector 7, Indira Nagar, Lucknow', 'Lucknow', 'Uttar Pradesh', '226016', '9876543210', 'info@greenrecyclers.in'),
(147, 'EcoCycle Solutions', '42-B, Gomti Nagar, Lucknow', 'Lucknow', 'Uttar Pradesh', '226010', '9988776655', 'contact@ecocyclesolutions.com'),
(148, 'Clean Earth Technologies', '23, Hazratganj, Lucknow', 'Lucknow', 'Uttar Pradesh', '226001', '9998887776', 'info@cleanearthtech.com'),
(149, 'BioWaste Recyclers', 'Sector D, Aliganj, Lucknow', 'Lucknow', 'Uttar Pradesh', '226024', '9966332211', 'info@biowasterecyclers.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age_group` varchar(20) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `lifestyle` varchar(50) DEFAULT NULL,
  `residence` varchar(50) DEFAULT NULL,
  `household_size` int(11) DEFAULT NULL,
  `home_ownership` varchar(10) DEFAULT NULL,
  `garden_access` varchar(10) DEFAULT NULL,
  `transport_mode` varchar(50) DEFAULT NULL,
  `transport_frequency` varchar(50) DEFAULT NULL,
  `sustainable_transport` varchar(10) DEFAULT NULL,
  `home_heating` varchar(50) DEFAULT NULL,
  `energy_reduction` varchar(10) DEFAULT NULL,
  `water_usage` varchar(100) DEFAULT NULL,
  `water_reduction_interest` varchar(10) DEFAULT NULL,
  `cook_frequency` varchar(50) DEFAULT NULL,
  `local_organic_food` varchar(50) DEFAULT NULL,
  `diet_restrictions` varchar(100) DEFAULT NULL,
  `food_waste_interest` varchar(10) DEFAULT NULL,
  `recycle_frequency` varchar(50) DEFAULT NULL,
  `recycle_materials` varchar(100) DEFAULT NULL,
  `composting_interest` varchar(10) DEFAULT NULL,
  `clothing_purchase_frequency` varchar(50) DEFAULT NULL,
  `purchase_impact` varchar(50) DEFAULT NULL,
  `sustainable_brands_interest` varchar(10) DEFAULT NULL,
  `sustainability_reasons` text DEFAULT NULL,
  `sustainability_interests` text DEFAULT NULL,
  `sustainability_challenges` text DEFAULT NULL,
  `local_events_interest` varchar(10) DEFAULT NULL,
  `community_forum_interest` varchar(10) DEFAULT NULL,
  `tips_preference` varchar(50) DEFAULT NULL,
  `platform_feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `age_group`, `occupation`, `lifestyle`, `residence`, `household_size`, `home_ownership`, `garden_access`, `transport_mode`, `transport_frequency`, `sustainable_transport`, `home_heating`, `energy_reduction`, `water_usage`, `water_reduction_interest`, `cook_frequency`, `local_organic_food`, `diet_restrictions`, `food_waste_interest`, `recycle_frequency`, `recycle_materials`, `composting_interest`, `clothing_purchase_frequency`, `purchase_impact`, `sustainable_brands_interest`, `sustainability_reasons`, `sustainability_interests`, `sustainability_challenges`, `local_events_interest`, `community_forum_interest`, `tips_preference`, `platform_feedback`) VALUES
(22, 'mark@gmail.com', '$2b$12$YOk.UuxOFJMcl3.oSJxqFOCV8Pxlj18PmODgS7WX3i7yDcnOmGk8q', 'Mark', '18-25', 'student', 'urban', 'apartment', 4, 'own', 'yes', 'bike', 'daily', 'yes', 'electric', 'yes', 'good water', 'yes', 'daily', 'always', 'vegan', 'yes', 'sometimes', 'plastic', 'yes', 'monthly', 'sometimes', 'yes', 'increase eco-enivorment', 'Waste Management', 'yes', 'yes', 'yes', 'email', 'improve '),
(23, 'naveen@gmail.com', '$2b$12$31JVyOuzOyvQBJV9ezDKh.i2JlCPT988yADAnULCaC.Lf3sJxDn7K', 'Naveen', '18-25', 'student', 'suburban', 'hourse', 4, 'own', 'yes', 'car', 'daily', 'no', 'gas', 'yes', 'good water', 'no', 'few_times_week', 'always', 'vegan', 'yes', 'sometimes', 'plastic', 'yes', 'monthly', 'always', 'yes', 'nature improve', 'Renewable Energy', 'yes', 'yes', 'yes', 'email', 'improve'),
(24, 'naveenbharathi@gmail.com', '$2b$12$XFUUT6ig4NQl0rXLY1FcPOw.hOQI9VRWshpqrPH4rj8RIniycpDZy', 'Naveen', '26-35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences_articles`
--

CREATE TABLE `user_preferences_articles` (
  `id` int(11) NOT NULL,
  `preference` varchar(255) NOT NULL,
  `article_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_preferences_articles`
--

INSERT INTO `user_preferences_articles` (`id`, `preference`, `article_id`) VALUES
(1, 'energy_reduction', 18),
(2, 'energy_reduction', 19),
(3, 'energy_reduction', 3),
(4, 'sustainable_transport', 21),
(5, 'sustainable_transport', 20),
(6, 'sustainable_transport', 6),
(7, 'recycle_frequency', 22),
(8, 'recycle_frequency', 8),
(9, 'composting_interest', 9),
(10, 'local_organic_food', 10),
(11, 'local_organic_food', 11),
(12, 'diet_restrictions', 12),
(13, 'home_ownership', 13),
(14, 'water_reduction_interest', 14),
(15, 'water_reduction_interest', 15),
(16, 'purchase_impact', 16),
(17, 'purchase_impact', 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles1`
--
ALTER TABLE `articles1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles2`
--
ALTER TABLE `articles2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbon_footprints`
--
ALTER TABLE `carbon_footprints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `eco_incidents`
--
ALTER TABLE `eco_incidents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recycling_centers`
--
ALTER TABLE `recycling_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_preferences_articles`
--
ALTER TABLE `user_preferences_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles1`
--
ALTER TABLE `articles1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `articles2`
--
ALTER TABLE `articles2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `carbon_footprints`
--
ALTER TABLE `carbon_footprints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `eco_incidents`
--
ALTER TABLE `eco_incidents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recycling_centers`
--
ALTER TABLE `recycling_centers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_preferences_articles`
--
ALTER TABLE `user_preferences_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carbon_footprints`
--
ALTER TABLE `carbon_footprints`
  ADD CONSTRAINT `carbon_footprints_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `eco_incidents`
--
ALTER TABLE `eco_incidents`
  ADD CONSTRAINT `eco_incidents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ideas`
--
ALTER TABLE `ideas`
  ADD CONSTRAINT `ideas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_preferences_articles`
--
ALTER TABLE `user_preferences_articles`
  ADD CONSTRAINT `user_preferences_articles_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles2` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
