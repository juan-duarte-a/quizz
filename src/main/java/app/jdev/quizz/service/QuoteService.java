package app.jdev.quizz.service;

import org.springframework.stereotype.Service;

import app.jdev.quizz.model.entity.Quote;
import app.jdev.quizz.model.repository.QuoteRepository;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QuoteService {

    private final QuoteRepository quoteRepository;

    public Quote getQuote() {
        long quoteNumber = quoteRepository.count();
        return quoteRepository.findById((long) (Math.random() * (quoteNumber)) + 1L).orElseThrow();
    }
    
}
