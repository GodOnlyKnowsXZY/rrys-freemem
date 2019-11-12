# rrys-freemem
# executed every three hours 
curl -o /root/freemem.sh https://raw.githubusercontent.com/GodOnlyKnowsXZY/rrys-freemem/master/freemem.sh && chmod +x freemem.sh && echo "01 */3 * * * root /root/freemem.sh" >> /var/spool/cron/root && crontab -l
