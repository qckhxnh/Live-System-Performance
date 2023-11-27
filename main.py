import psutil
import time
import psycopg2


# Establish a connection to the database
conn = psycopg2.connect(
    host="localhost",
    port="5432",
    database="database",
    user="postgres",
    password="Quockhanh2004@"
)

# Create a cursor object to execute SQL queries
cur = conn.cursor()

if cur:
    print("Connection established successfully")
else:
    print("Connection not established")

print('Measuring system performance...')
while True:
    cpu_usage = psutil.cpu_percent()
    memory_usage = psutil.virtual_memory()[2]
    
    cpu_interrupts = psutil.cpu_stats()[2]
    cpu_calls = psutil.cpu_stats()[3]
    
    memory_used = psutil.virtual_memory()[3]
    memory_free = psutil.virtual_memory()[4]
    
    bytes_sent = psutil.net_io_counters()[0]
    bytes_received = psutil.net_io_counters()[1]
    
    disk_usage = psutil.disk_usage('/')[3]
    cur.execute(f'INSERT INTO performance VALUES (NOW(), {cpu_usage}, {memory_usage}, {cpu_interrupts}, {cpu_calls}, {memory_used}, {memory_free}, {bytes_sent}, {bytes_received}, {disk_usage})')
    conn.commit()
    
    time.sleep(1)


