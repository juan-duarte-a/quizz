package app.jdev.quiz.service;

import org.springframework.stereotype.Service;

import app.jdev.quiz.model.entity.Quote;
import app.jdev.quiz.model.repository.QuoteRepository;
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
