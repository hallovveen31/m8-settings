.class public final Lcom/amap/mapapi/offlinemap/OfflineMapManager;
.super Ljava/lang/Object;
.source "OfflineMapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    }
.end annotation


# instance fields
.field a:Lcom/amap/mapapi/offlinemap/c;

.field b:Lcom/amap/mapapi/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/offlinemap/City;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/mapapi/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->c:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Lcom/amap/mapapi/offlinemap/d;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/offlinemap/d;-><init>(Lcom/amap/mapapi/offlinemap/OfflineMapManager;)V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->d:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/amap/mapapi/offlinemap/c;

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->d:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/amap/mapapi/offlinemap/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    .line 30
    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    .line 31
    iput-object p2, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->b:Lcom/amap/mapapi/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    .line 32
    invoke-direct {p0, p1}, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "1010.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 44
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :goto_1
    return-void

    .line 48
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 49
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/offlinemap/c;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Lcom/amap/mapapi/offlinemap/i;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lcom/amap/mapapi/offlinemap/g;

    invoke-direct {v0, p1}, Lcom/amap/mapapi/offlinemap/g;-><init>(Lcom/amap/mapapi/offlinemap/i;)V

    .line 83
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v1, v1, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/offlinemap/g;->a(I)V

    .line 84
    const/4 v1, 0x2

    iput v1, v0, Lcom/amap/mapapi/offlinemap/g;->a:I

    .line 85
    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v1, v1, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v1, v1, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/offlinemap/c;->a(I)V

    .line 87
    return-void
.end method


# virtual methods
.method public downloadByCityCode(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->getItemByCityCode(Ljava/lang/String;)Lcom/amap/mapapi/offlinemap/i;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0, v0}, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a(Lcom/amap/mapapi/offlinemap/i;)V

    .line 65
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public downloadByCityName(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->getItemByCityName(Ljava/lang/String;)Lcom/amap/mapapi/offlinemap/i;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, v0}, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a(Lcom/amap/mapapi/offlinemap/i;)V

    .line 75
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadingCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/offlinemap/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemByCityCode(Ljava/lang/String;)Lcom/amap/mapapi/offlinemap/i;
    .locals 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v0, v0, Lcom/amap/mapapi/offlinemap/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/offlinemap/i;

    .line 90
    invoke-virtual {v0}, Lcom/amap/mapapi/offlinemap/i;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemByCityName(Ljava/lang/String;)Lcom/amap/mapapi/offlinemap/i;
    .locals 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v0, v0, Lcom/amap/mapapi/offlinemap/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/offlinemap/i;

    .line 98
    invoke-virtual {v0}, Lcom/amap/mapapi/offlinemap/i;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOfflineCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/offlinemap/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v0, v0, Lcom/amap/mapapi/offlinemap/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUpdateInfo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/offlinemap/c;->b(I)V

    .line 113
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->getItemByCityName(Ljava/lang/String;)Lcom/amap/mapapi/offlinemap/i;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 121
    new-instance v1, Lcom/amap/mapapi/offlinemap/g;

    invoke-direct {v1, v0}, Lcom/amap/mapapi/offlinemap/g;-><init>(Lcom/amap/mapapi/offlinemap/i;)V

    .line 122
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/offlinemap/c;->a(Lcom/amap/mapapi/offlinemap/g;)V

    .line 125
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v1, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    iget-object v1, v1, Lcom/amap/mapapi/offlinemap/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/offlinemap/c;->a(I)V

    .line 153
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->a:Lcom/amap/mapapi/offlinemap/c;

    invoke-virtual {v0}, Lcom/amap/mapapi/offlinemap/c;->b()V

    .line 149
    return-void
.end method
