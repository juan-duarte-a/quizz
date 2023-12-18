package app.jdev.quizz.service;

import org.springframework.stereotype.Service;

import app.jdev.quizz.entity.Quote;
import app.jdev.quizz.repository.QuoteRepository;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QuoteService {

    private final QuoteRepository quoteRepository;

    public Quote getQuote() {
        long quoteNumber = quoteRepository.count();
        return quoteRepository.findById((long) (Math.random() * (quoteNumber - 1)) + 1L).orElseThrow();
    }
    
}
