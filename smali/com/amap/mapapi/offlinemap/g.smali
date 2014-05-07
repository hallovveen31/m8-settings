.class public Lcom/amap/mapapi/offlinemap/g;
.super Ljava/lang/Object;
.source "UpdateItem.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field e:J

.field f:J

.field g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/mapapi/offlinemap/g;->a:I

    .line 34
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->h:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->i:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->j:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->k:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->l:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->b:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->c:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->d:Ljava/lang/String;

    .line 44
    iput-wide v2, p0, Lcom/amap/mapapi/offlinemap/g;->e:J

    .line 47
    iput-wide v2, p0, Lcom/amap/mapapi/offlinemap/g;->f:J

    .line 51
    iput-wide v2, p0, Lcom/amap/mapapi/offlinemap/g;->g:J

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/offlinemap/i;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/mapapi/offlinemap/g;->a:I

    .line 34
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->h:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->i:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->j:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->k:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->l:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->b:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->c:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->d:Ljava/lang/String;

    .line 44
    iput-wide v2, p0, Lcom/amap/mapapi/offlinemap/g;->e:J

    .line 47
    iput-wide v2, p0, Lcom/amap/mapapi/offlinemap/g;->f:J

    .line 51
    iput-wide v2, p0, Lcom/amap/mapapi/offlinemap/g;->g:J

    .line 55
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/i;->getPinyin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->k:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/amap/mapapi/offlinemap/i;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/i;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->h:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/i;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->j:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/amap/mapapi/offlinemap/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->i:Ljava/lang/String;

    .line 60
    iget-wide v0, p1, Lcom/amap/mapapi/offlinemap/i;->b:J

    iput-wide v0, p0, Lcom/amap/mapapi/offlinemap/g;->f:J

    .line 61
    invoke-static {}, Lcom/amap/mapapi/offlinemap/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->l:Ljava/lang/String;

    .line 64
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/g;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/amap/mapapi/offlinemap/i;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->c:Ljava/lang/String;

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput p1, p0, Lcom/amap/mapapi/offlinemap/g;->m:I

    .line 148
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/amap/mapapi/offlinemap/g;->m:I

    return v0
.end method

.method public e()V
    .locals 5

    .prologue
    .line 192
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 197
    const-string v2, "title"

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v2, "code"

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "url"

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v2, "pinyin"

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v2, "jianpin"

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v2, "fileName"

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v2, "lLocalLength"

    iget-wide v3, p0, Lcom/amap/mapapi/offlinemap/g;->e:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 206
    const-string v2, "lRemoteLength"

    iget-wide v3, p0, Lcom/amap/mapapi/offlinemap/g;->f:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 208
    const-string v2, "mState"

    iget v3, p0, Lcom/amap/mapapi/offlinemap/g;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    const-string v2, "Schedule"

    iget-wide v3, p0, Lcom/amap/mapapi/offlinemap/g;->g:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    const-string v2, "version"

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
