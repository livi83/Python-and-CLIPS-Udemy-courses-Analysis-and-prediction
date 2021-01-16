(deftemplate courses
	(slot subscribers (type NUMBER))
	(slot reviews (type NUMBER))
	(slot price (type NUMBER))
)

(defrule insertData
(declare (salience 10))
=>
	(printout t " " crlf)
	(printout t "Enter number of subscribers:" crlf)
	(bind ?entered_subscribers (read))
	(printout t "Enter number of reviews:" crlf)
	(bind ?entered_reviews (read))
	(printout t "Enter price:" crlf)
	(bind ?entered_price (read))	
	(assert (courses (subscribers ?entered_subscribers) (reviews ?entered_reviews) (price ?entered_price)))
)
(defrule decide
	(declare (salience 5))
	(courses (subscribers ?entered_subscribers) (reviews ?entered_reviews) (price ?entered_price))
=>
	(if (and (<= ?entered_subscribers 521.5)(<= ?entered_reviews 25.5)(<= ?entered_price 140.0)(<= ?entered_price 32.5)) 
		then (return (printout t "Business Finance" crlf)))
	
	else
	(if (and (<= ?entered_subscribers 521.5)(<= ?entered_reviews 25.5)(<= ?entered_price 140.0)(> ?entered_price 32.5)(<= ?entered_subscribers 0.5)) 
		then (return (printout t "Musical Instruments" crlf)))
	
	else
	(if (and (<= ?entered_subscribers 521.5)(<= ?entered_reviews 25.5)(<= ?entered_price 140.0)(> ?entered_price 32.5)(> ?entered_subscribers 0.5)) 
		then (return (printout t "Business Finance" crlf)))
	
	else
	(if(and(<= ?entered_subscribers 521.5)(<= ?entered_reviews 25.5) (> ?entered_price 140.0))
	then (return (printout t "Web developement" crlf)))

	else
	(if(and(<= ?entered_subscribers 521.5)(> ?entered_reviews 25.5))
	then (return(printout t "Web developement" crlf)))

	else
	(if(and(>= ?entered_subscribers 521.5)(<= 6620.0 ?entered_subscribers)(<= 12.5 ?entered_reviews))
	then (return (printout t "web developement" crlf)))
	
	else
	(if(and(> ?entered_subscribers 521.5)(<= ?entered_reviews 55.5)(<= ?entered_subscribers 6620.0) (> ?entered_reviews 12.5)(<= ?entered_subscribers 1283.0))
	then (return(printout t "Web developement" crlf)))

	else
	(if(and(> ?entered_subscribers 521.5)(<= ?entered_reviews 55.5)(<= ?entered_subscribers 6620.0)(> ?entered_reviews 12.5)(> ?entered_subscribers 1283.0))
	then (return(printout t "Business finance" crlf)))

	else
	(if(and(> ?entered_subscribers 521.5)(<= ?entered_reviews 55.5 )(> ?entered_subscribers 6620))
	then(return(printout t "Web developement"crlf)))
	
	else
	(if(and(> ?entered_subscribers 521.5 )(> ?entered_reviews 55.5)(<= ?entered_subscribers 10672.0)(<= ?entered_price 10.0))
	then (return(printout t "Web developement" crlf)))
	
	else 
	(if(and(> ?entered_reviews 521.5)(> ?entered_reviews 55.5)(<= ?entered_subscribers 10672.0)(> ?entered_price 10.0))
	then (return (printout t "Web develipement" crlf)))

	else 
	(if(and(> ?entered_subscribers 521.5)(> ?entered_reviews 55.5)(> ?entered_subscribers 10672.0))
	then (return(printout t "Web developement")))
	

)

	