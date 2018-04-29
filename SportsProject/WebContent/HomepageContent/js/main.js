new Vue({
    el: '#app',
    data: {
      events: Seed.events 
    },
    computed: {
      sortedEvents () {
        return this.events.sort((a, b) => {
          return b.votes - a.votes
        });
      }
    },
    methods: {
      upvote: function(eventId) {
        const event = this.events.find(
          event => event.id === eventId
        )
        event.votes++
      },
      downvote: function(eventId) {
        const event = this.events.find(
          event => event.id === eventId
        )
        event.votes--
      }
    }
  });