Vim�UnDo� �YP	DYp&"�V�.B�K .u�<-~��/Z#�   4           $                       V�H   	 _�                     	        ����                                                                                                                                                                                                                                                                                                                                                             V��k     �               '   'use strict';       const P = require('bluebird');   const userSearch = require('')       exports.index = {   *  answeredQuestion: indexAnsweredQuestion,     newTeam: indexNewTeam,   $  newUser: userSearch.index.newUser,       };       exports.search = {     user: userSearch.search,     answer: answerSearch.search   };       exports.rawSearch = {     user: userSearch.textSearch,   !  answer: answerSearch.textSearch   };       *function indexAnsweredQuestion(question) {     if(!question.answer) {   K    return P.reject(new Error('Cannot index questions without an answer'));     }         return P.join(   2    answerSearch.index.answeredQuestion(question),   /    userSearch.index.answeredQuestion(question)     );   }       function indexNewTeam(team) {     return P.join(   %    answerSearch.index.newTeam(team),   "    userSearch.index.newTeam(team)     );   };5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             V�      �         '      const userSearch = require('')5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             V� (     �         '       //const userSearch = require('')5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             V� (    �         '      /const userSearch = require('')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             V� 9    �         '      const userSearch = require('')5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             V� �    �         '       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             V�l     �               (   'use strict';       0const answerSearch = require('./answer_search');   const P = require('bluebird');   +const userSearch = require('./user_search')       exports.index = {   *  answeredQuestion: indexAnsweredQuestion,     newTeam: indexNewTeam,     user: userSearch.index.user,       };       exports.search = {     user: userSearch.search,     answer: answerSearch.search   };       exports.rawSearch = {     user: userSearch.textSearch,   !  answer: answerSearch.textSearch   };       2function indexAnsweredQuestion(question, answer) {     if(!question.answer) {   K    return P.reject(new Error('Cannot index questions without an answer'));     }         return P.join(   :    answerSearch.index.answeredQuestion(question, answer),   7    userSearch.index.answeredQuestion(question, answer)     );   }       function indexNewTeam(team) {     return P.join(   %    answerSearch.index.newTeam(team),   "    userSearch.index.newTeam(team)     );   };5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                 v       V�s     �         B      <<<<<<< HEAD   +const userSearch = require('./user_search')       exports.index = {   *  answeredQuestion: indexAnsweredQuestion,     newTeam: indexNewTeam,     user: userSearch.index.user,       };       exports.search = {     user: userSearch.search,     answer: answerSearch.search   };   =======   0const userSearch = require('./lib/user_search');5�_�                 	           ����                                                                                                                                                                                                                                                                                                                                                 v       V�x    �                0>>>>>>> 2b21409c230eec2cf26c9951c367b543e0dc00915�_�   	      
          2       ����                                                                                                                                                                                                                                                                                                                                                 v       V��    �   1              }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       V��    �                0const answerSearch = require('./answer_search');5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                 v       V��    �         2      !    userSearch.index.create(team)5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                 v       V��   	 �         2      $    answerSearch.index.create(team),5�_�                             ����                                                                                                                                                                                                                                                                                                                                                 v       V�G     �               2   'use strict';       const P = require('bluebird');   0const userSearch = require('./lib/user_search');   4const answerSearch = require('./lib/answer_search');       module.exports = {   
  index: {       create: createIndices,        user: userSearch.index.user,       question: indexQuestion,       answer: indexAnswer     },     search: {       user: {   /      byQuestion: userSearch.search.byQuestion,   &      byText: userSearch.search.byText       },       answer: {   1      byQuestion: answerSearch.search.byQuestion,   (      byText: answerSearch.search.byText       }     }   }       function createIndices(team) {     return P.join(   "    userSearch.index.create(team),   #    answerSearch.index.create(team)     );   }       "function indexQuestion(question) {     if(!question.answer) {   K    return P.reject(new Error('Cannot index questions without an answer'));     }         return P.join(   (    userSearch.index.question(question),   )    answerSearch.index.question(question)     );   }       function indexAnswer(answer) {     return P.join(   $    userSearch.index.answer(answer),   %    answerSearch.index.answer(answer)     );   }    5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                 v       V�{     �         2       5��