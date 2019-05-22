Feature: Supra Moteur

  Scenario: deoublonnage cas: inter-moteur

    Given  les interactions suivantes
      # transform this data table to Interaction object
      |clientId | interactionId            | interactionDate  | moteurId |
      |1        | PEL                      | 2019-05-09       | OAP      |
      |1        | ES LIBRE                 | 2019-05-09       | OAP      |
      |1        | LIV JEUNE                | 2019-05-09       | OAP      |
      |1        | MOBILEO                  | 2019-05-09       | OAP      |
      |1        | KYC                      | 2019-05-09       | PE       |
      |1        | ES LIBRE                 | 2019-05-09       | PE       |
      |1        | MOBILEO ASSU VIE         | 2019-05-09       | PE       |

    When j'applique le dedoublonnage

    Then le resultat est le suivant

      |clientId   | interactionId     | interactionDate  | moteurId         |
      |1          | PEL               | 2019-05-09       | OAP              |
      |1          | ES LIBRE          | 2019-05-09       | OAP,PE           |
      |1          | LIV JEUNE         | 2019-05-09       | OAP              |
      |1          | MOBILEO           | 2019-05-09       | OAP              |
      |1          | KYC               | 2019-05-09       | PE               |
      |1          | MOBILEO ASSU VIE  | 2019-05-09       | PE               |

