Feature: Operations

  Scenario: Calcul de l'addition

    Given  les nombres A et B suivant
      # transform this data table to Interaction object
      |A | B|
      |1 | 1|


    When je calcule l'addition

    Then le resultat est le suivant

      |clientId|
      |2       |


