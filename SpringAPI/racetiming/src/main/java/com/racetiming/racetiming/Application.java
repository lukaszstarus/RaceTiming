package com.racetiming.racetiming;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {
    // private long beginTime;
	// private long endTime;
	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
 // @Bean
    // public CommandLineRunner demo (CustomerRepository customerRepository, BookRepository bookRepository, RentalRepository rentalsRepository )
    // {
    //     return (args)->{
    //         init(customerRepository, bookRepository, rentalsRepository);
    //         for (Book book : bookRepository.findAll()) {
    //             log.info("---------------------------------------------------------------------------------------------");
    //             log.info(book.toString());
    //             break;
                
    //         }
    //         log.info("Customer found by FindALL");
    //         for(Customer customer : customerRepository.findAll()) {
    //             log.info(customer.toString());
    //             break;
    //         }
    //     };
    // }
    // public void init(CustomerRepository customerRepository, BookRepository bookRepository, RentalRepository rentalRepository){
    //     setUp();
    //     Book b1=new Book();
    //     Customer c1= new Customer();
    //     Rental r1=new Rental();
    //     SimpleDateFormat df = new SimpleDateFormat("yyyy-mm-dd");


    //     Date start ;
    //     Date finish;
    //         try{
    //         Scanner names = new Scanner(new File ("oro\\src\\main\\java\\com\\Names.txt"));
    //         Scanner titles = new Scanner(new File ("oro\\src\\main\\java\\com\\Titles.txt"));
    //         Scanner cnames = new Scanner(new File ("oro\\src\\main\\java\\com\\Names2.txt"));
    //         Scanner splnames;
            
    //     while(names.hasNext())
    //     {
    //         long random = getRandomTimeBetweenTwoDates();
    //         start = new Date(random);
    //         finish= new Date(random+1000000000);

    //         b1=new Book(titles.nextLine(),names.nextLine(), new Random().nextInt(1000));
    //         splnames = new Scanner(cnames.nextLine());
    //         c1= new Customer(splnames.next(), splnames.next());
    //         r1= new Rental(start,finish);
    //         r1.setBook(b1);
    //         r1.setCustomer(c1);
    //         customerRepository.save(c1);
    //         bookRepository.save(b1);
    //         rentalRepository.save(r1);
    //     }

    //     names.close();
    //     titles.close();
    //     cnames.close();
    // }catch(Exception e){System.err.println(e.getMessage());
    // }
    // }
    // public void setUp () {
    //     beginTime = Timestamp.valueOf("2013-01-01 00:00:00").getTime();
    //     endTime = Timestamp.valueOf("2018-12-31 00:58:00").getTime();
    // }
    // private long getRandomTimeBetweenTwoDates () {
    //     long diff = endTime - beginTime + 1;
    //     return beginTime + (long) (Math.random() * diff);
    // }
    
}
