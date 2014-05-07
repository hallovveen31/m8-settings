.class Lcom/amap/mapapi/map/z;
.super Landroid/os/Handler;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/MapActivity;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/MapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/z;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/amap/mapapi/map/z;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapActivity;->a(Lcom/amap/mapapi/map/MapActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/z;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapActivity;->a(Lcom/amap/mapapi/map/MapActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView;

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$b;->b()V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/amap/mapapi/map/z;->a:Lcom/amap/mapapi/map/MapActivity;

    sget-object v2, Lcom/amap/mapapi/core/a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
