.class Lcom/amap/mapapi/offlinemap/d;
.super Landroid/os/Handler;
.source "OfflineMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/offlinemap/OfflineMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/offlinemap/OfflineMapManager;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/offlinemap/OfflineMapManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/d;->a:Lcom/amap/mapapi/offlinemap/OfflineMapManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/d;->a:Lcom/amap/mapapi/offlinemap/OfflineMapManager;

    iget-object v0, v0, Lcom/amap/mapapi/offlinemap/OfflineMapManager;->b:Lcom/amap/mapapi/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "completepercent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amap/mapapi/offlinemap/OfflineMapManager$OfflineMapDownloadListener;->onDownload(II)V

    return-void
.end method
