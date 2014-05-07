.class public Lcom/amap/mapapi/offlinemap/c;
.super Ljava/lang/Object;
.source "MapDownloadManager.java"


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/offlinemap/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/offlinemap/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/offlinemap/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/offlinemap/City;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/os/Handler;

.field f:Lcom/amap/mapapi/offlinemap/e;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/offlinemap/c;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->a:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->c:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->d:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->h:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/c;->h:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Lcom/amap/mapapi/offlinemap/c;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/offlinemap/c;->g:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/mapapi/core/b;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/amap/VMAP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/io/File;

    const-string v2, "amap"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 60
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "mini_mapv2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 67
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "vmap"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/offlinemap/g;

    .line 86
    invoke-virtual {v0}, Lcom/amap/mapapi/offlinemap/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    :try_start_0
    new-instance v2, Lcom/amap/mapapi/offlinemap/f;

    invoke-virtual {v0}, Lcom/amap/mapapi/offlinemap/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/amap/mapapi/offlinemap/c;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/amap/mapapi/offlinemap/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    new-instance v1, Lcom/amap/mapapi/offlinemap/e;

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/c;->h:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/amap/mapapi/offlinemap/e;-><init>(Lcom/amap/mapapi/offlinemap/f;Lcom/amap/mapapi/offlinemap/c;Lcom/amap/mapapi/offlinemap/g;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->f:Lcom/amap/mapapi/offlinemap/e;

    .line 96
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->f:Lcom/amap/mapapi/offlinemap/e;

    invoke-virtual {v1}, Lcom/amap/mapapi/offlinemap/e;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    invoke-virtual {p0, v0, v6, v6}, Lcom/amap/mapapi/offlinemap/c;->a(Lcom/amap/mapapi/offlinemap/g;II)V

    .line 101
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/mapapi/offlinemap/g;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x3

    iput v0, p1, Lcom/amap/mapapi/offlinemap/g;->a:I

    .line 123
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/g;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/offlinemap/c;->b(I)V

    .line 132
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 153
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 160
    :cond_2
    :goto_2
    return-void

    .line 125
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 128
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 155
    :catch_2
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public a(Lcom/amap/mapapi/offlinemap/g;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    const-string v1, "completepercent"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 274
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 275
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    iput p2, p1, Lcom/amap/mapapi/offlinemap/g;->a:I

    .line 277
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/g;->e()V

    .line 278
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 16
    .parameter

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/offlinemap/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    :try_start_0
    const-string v1, "maps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 200
    if-nez v13, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 205
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v14, :cond_4

    .line 206
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 208
    const-string v3, ""

    .line 209
    const-string v4, ""

    .line 210
    const-string v5, ""

    .line 211
    const-string v6, ""

    .line 212
    const-string v2, ""

    .line 213
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 214
    const-wide/16 v7, 0x0

    .line 216
    :try_start_1
    const-string v9, "name"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v3

    .line 220
    :goto_2
    :try_start_2
    const-string v9, "citycode"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v4

    .line 224
    :goto_3
    :try_start_3
    const-string v9, "durl"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    move-object v11, v5

    .line 228
    :goto_4
    :try_start_4
    const-string v5, "size"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v7

    move-wide v9, v7

    .line 232
    :goto_5
    :try_start_5
    const-string v5, "pinyin"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v6

    .line 236
    :goto_6
    :try_start_6
    const-string v5, "version"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v2

    move-object v8, v2

    .line 241
    :goto_7
    :try_start_7
    const-string v2, "jianpin"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v1

    move-object v7, v1

    .line 246
    :goto_8
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-gtz v1, :cond_3

    .line 205
    :cond_2
    :goto_9
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_1

    .line 225
    :catch_0
    move-exception v9

    move-object v11, v5

    goto :goto_4

    .line 229
    :catch_1
    move-exception v5

    move-wide v9, v7

    goto :goto_5

    .line 237
    :catch_2
    move-exception v5

    move-object v8, v2

    goto :goto_7

    .line 242
    :catch_3
    move-exception v2

    move-object v7, v1

    goto :goto_8

    .line 250
    :cond_3
    new-instance v1, Lcom/amap/mapapi/offlinemap/i;

    const-string v2, ""

    const/4 v5, 0x0

    const/4 v15, 0x1

    invoke-virtual {v6, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/amap/mapapi/offlinemap/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iput-object v11, v1, Lcom/amap/mapapi/offlinemap/i;->a:Ljava/lang/String;

    .line 252
    iput-wide v9, v1, Lcom/amap/mapapi/offlinemap/i;->b:J

    .line 254
    iput-object v8, v1, Lcom/amap/mapapi/offlinemap/i;->d:Ljava/lang/String;

    .line 255
    iput-object v7, v1, Lcom/amap/mapapi/offlinemap/i;->e:Ljava/lang/String;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/offlinemap/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/offlinemap/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 264
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 260
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/offlinemap/c;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/offlinemap/c;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 233
    :catch_5
    move-exception v5

    goto :goto_6

    .line 221
    :catch_6
    move-exception v9

    goto/16 :goto_3

    .line 217
    :catch_7
    move-exception v9

    goto/16 :goto_2
.end method

.method public b()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->f:Lcom/amap/mapapi/offlinemap/e;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->f:Lcom/amap/mapapi/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/mapapi/offlinemap/e;->b()V

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v1, "status"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    const-string v1, "completepercent"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 171
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->f:Lcom/amap/mapapi/offlinemap/e;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->f:Lcom/amap/mapapi/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/mapapi/offlinemap/e;->b()V

    .line 176
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->f:Lcom/amap/mapapi/offlinemap/e;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->f:Lcom/amap/mapapi/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/mapapi/offlinemap/e;->b()V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v1, "status"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v1, "completepercent"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    :cond_0
    return-void
.end method

.method public b(Lcom/amap/mapapi/offlinemap/g;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 282
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/mapapi/offlinemap/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/g;->e()V

    .line 292
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 299
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 300
    const-string v3, "status"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v3, "completepercent"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 303
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 304
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    iput v4, p1, Lcom/amap/mapapi/offlinemap/g;->a:I

    .line 306
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/g;->e()V

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    sget-object v1, Lcom/amap/mapapi/offlinemap/c;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amap/mapapi/core/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    const-string v1, "status"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v1, "completepercent"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 315
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 316
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :cond_0
    iput v5, p1, Lcom/amap/mapapi/offlinemap/g;->a:I

    .line 319
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 321
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {p1}, Lcom/amap/mapapi/offlinemap/g;->e()V

    .line 324
    return-void

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
