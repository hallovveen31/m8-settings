.class public Lcom/amap/mapapi/offlinemap/b;
.super Ljava/lang/Thread;
.source "FileSplitterFetch.java"


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:Z

.field g:Lcom/amap/mapapi/offlinemap/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/amap/mapapi/offlinemap/b;->e:Z

    iput-boolean v0, p0, Lcom/amap/mapapi/offlinemap/b;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/b;->g:Lcom/amap/mapapi/offlinemap/a;

    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/b;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/amap/mapapi/offlinemap/b;->b:J

    iput-wide p5, p0, Lcom/amap/mapapi/offlinemap/b;->c:J

    iput p7, p0, Lcom/amap/mapapi/offlinemap/b;->d:I

    new-instance v0, Lcom/amap/mapapi/offlinemap/a;

    iget-wide v1, p0, Lcom/amap/mapapi/offlinemap/b;->b:J

    invoke-direct {v0, p2, v1, v2}, Lcom/amap/mapapi/offlinemap/a;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/b;->g:Lcom/amap/mapapi/offlinemap/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/offlinemap/b;->f:Z

    return-void
.end method

.method public run()V
    .locals 7

    :goto_0
    iget-wide v0, p0, Lcom/amap/mapapi/offlinemap/b;->b:J

    iget-wide v2, p0, Lcom/amap/mapapi/offlinemap/b;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/mapapi/offlinemap/b;->f:Z

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "text/xml;"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/mapapi/offlinemap/b;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RANGE"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amap/mapapi/offlinemap/h;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_1
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    iget-wide v3, p0, Lcom/amap/mapapi/offlinemap/b;->b:J

    iget-wide v5, p0, Lcom/amap/mapapi/offlinemap/b;->c:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lcom/amap/mapapi/offlinemap/b;->f:Z

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/amap/mapapi/offlinemap/b;->b:J

    iget-object v5, p0, Lcom/amap/mapapi/offlinemap/b;->g:Lcom/amap/mapapi/offlinemap/a;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v2}, Lcom/amap/mapapi/offlinemap/a;->a([BII)I

    move-result v2

    int-to-long v5, v2

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/amap/mapapi/offlinemap/b;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amap/mapapi/offlinemap/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is over!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/offlinemap/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/offlinemap/b;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_1
    return-void
.end method
