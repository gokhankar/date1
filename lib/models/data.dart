// UserSchedule
// ---------------
// id int; FK >- User.id
// user_id int;
// schedule_day string;            =========>>> int e çevirelim
// schedule_start_time string;
// schedule_end_time string;
// average_consulting_time string;
// status string;

//  2022-12-05 03:06:45.159014

// Service
// ---
// id pk int;
// store_id int;
// name string;
// image string;
// description string;
// price double;
// duration_time time;      =====>duration yeterli
// break_time time;

// Event
// --------
// id pk int;
// store_id int; FK >- Store.id
// services_id int;
// event_type_id int; FK >- EventType.id
// user_id int;
// customer_id int;
// payment_id int;
// event_name string;
// event_start DateTime;
// event_end DateTime;
// isOccured bool;
// isCancelled bool;

// EvenDescription
// ----------------
// id pk int;
// evet_id int; FK >- Event.id
// description string;
// user_id int;
// isRead bool;

// EventType
// ----------
// id pk int;
// name string;

List userSchedule = [
  {
    "id": 1,
    "user_id": 123,
    "schedule_day": "monday",
    "schedule_start_time": "08.00",
    "schedule_end_time": "12.00",
    "average_consulting_time": 40,
  },
  {
    "id": 2,
    "user_id": 123,
    "schedule_day": "monday",
    "schedule_start_time": "13.00",
    "schedule_end_time": "16.00",
    "average_consulting_time": 40,
  },
  {
    "id": 3,
    "user_id": 123,
    "schedule_day": "tuesday",
    "schedule_start_time": "08.00",
    "schedule_end_time": "12.00",
    "average_consulting_time": 40,
  },
  {
    "id": 4,
    "user_id": 123,
    "schedule_day": "tuesday",
    "schedule_start_time": "13.00",
    "schedule_end_time": "17.00",
    "average_consulting_time": 40,
  },
  {
    "id": 5,
    "user_id": 123,
    "schedule_day": "wednesday",
    "schedule_start_time": "08.00",
    "schedule_end_time": "12.00",
    "average_consulting_time": 40,
  },
  {
    "id": 6,
    "user_id": 123,
    "schedule_day": "wednesday",
    "schedule_start_time": "13.00",
    "schedule_end_time": "15.00",
    "average_consulting_time": 40,
  },
  {
    "id": 7,
    "user_id": 123,
    "schedule_day": "thursday",
    "schedule_start_time": "08.00",
    "schedule_end_time": "12.00",
    "average_consulting_time": 40,
  },
  {
    "id": 8,
    "user_id": 123,
    "schedule_day": "thurdsday",
    "schedule_start_time": "14.00",
    "schedule_end_time": "17.00",
    "average_consulting_time": 40,
  },
  {
    "id": 9,
    "user_id": 123,
    "schedule_day": "friday",
    "schedule_start_time": "08.00",
    "schedule_end_time": "12.00",
    "average_consulting_time": 40,
  },
  {
    "id": 10,
    "user_id": 123,
    "schedule_day": "friday",
    "schedule_start_time": "13.00",
    "schedule_end_time": "14.00",
    "average_consulting_time": 40,
  },
  {
    "id": 11,
    "user_id": 123,
    "schedule_day": "saturday",
    "schedule_start_time": "13.00",
    "schedule_end_time": "16.00",
    "average_consulting_time": 40,
  }
];

Map event01 = {
  "id": 101,
  "event_type_id": 2,
  "event_name": "massage",
  "event_start": "2022-12-12 13:06:45.000000",
  "event_end": "2022-12-12 13:46:45.000000"
};
Map event02 = {
  "id": 101,
  "event_type_id": 2,
  "event_name": "massage",
  "event_start": "2022-12-15 13:06:45.000000",
  "event_end": "2022-12-12 13:46:45.000000"
};
Map event03 = {
  "id": 101,
  "event_type_id": 2,
  "event_name": "massage",
  "event_start": "2022-12-14 13:06:45.000000",
  "event_end": "2022-12-12 13:46:45.000000"
};

List eventTypes = [
  {
    "id": 1,
    "name": "user schedule",
  },
  {
    "id": 2,
    "name": "appointment",
  },
  {
    "id": 3,
    "name": "cancel",
  },
];

List serviceList = [
  {
    "id": 1,
    "name": "masaj",
    "description": "Lorem Ipsum",
    "price": 150,
    "duration_time": 45,
    "break_time": 0
  },
  {
    "id": 2,
    "name": "aile terapisi",
    "description": "Lorem Ipsum",
    "price": 250,
    "duration_time": 45,
    "break_time": 15
  },
  {
    "id": 3,
    "name": "bireysel terapi",
    "description": "Lorem Ipsum",
    "price": 250,
    "duration_time": 30,
    "break_time": 0
  },
  {
    "id": 4,
    "name": "saç kesimi",
    "description": "Lorem Ipsum",
    "price": 100,
    "duration_time": 40,
    "break_time": 0
  },
];
