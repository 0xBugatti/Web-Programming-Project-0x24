CREATE TABLE admin (
  ID int(11) NOT NULL,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE hotels (
  ID int(11) NOT NULL,
  hotel_name varchar(100) DEFAULT NULL,
  description text DEFAULT NULL,
  Image text DEFAULT NULL,
  location text DEFAULT NULL,
  rank int(11) DEFAULT NULL,
  price_room int(11) DEFAULT NULL,
  features text NOT NULL,
  activities text NOT NULL,
  availabe_rooms int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE registrations (
  ID int(11) NOT NULL,
  user_id int(11) DEFAULT NULL,
  hotel_id int(11) DEFAULT NULL,
  check_in_date date DEFAULT NULL,
  check_out_date date DEFAULT NULL,
  num_rooms int(11) DEFAULT NULL,
  num_guests int(11) DEFAULT NULL,
  total_price int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE users (
  ID int(11) NOT NULL,
  username varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  phone varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
