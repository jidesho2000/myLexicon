<?php

namespace Lexemes\Service\Invokable;

use Lexemes\Model\Entity\Meaning;
use Lexemes\Model\MeaningMapper;


class MeaningService {
	
	private $meaningMapper;
	
	public function __construct($PDO) {
		$this->meaningMapper = new MeaningMapper($PDO);
	}
	
	public function createMeaning($meaningData) {
		$meaningId = $this->meaningMapper->createMeaning($meaningData);
		return $meaningId;
	}
	
	public function readMeaning($id) {
		$meaning = $this->meaningMapper->readMeaning($id);
		return $meaning;
	}
	
	public function readAllMeanings($targetLanguage, $baseLanguage) {
		$meanings = $this->meaningMapper->readAllMeanings($targetLanguage, $baseLanguage);
		return $meanings;
	}
	
	public function updateMeaning($id, $meaningData) {
		
	}
}
