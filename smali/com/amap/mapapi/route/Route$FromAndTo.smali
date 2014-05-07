.class public Lcom/amap/mapapi/route/Route$FromAndTo;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromAndTo"
.end annotation


# static fields
.field public static final NoTrans:I = 0x0

.field public static final TransBothPoint:I = 0x3

.field public static final TransFromPoint:I = 0x1

.field public static final TransToPoint:I = 0x2


# instance fields
.field public mFrom:Lcom/amap/mapapi/core/GeoPoint;

.field public mTo:Lcom/amap/mapapi/core/GeoPoint;

.field public mTrans:I


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/mapapi/route/Route$FromAndTo;-><init>(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;I)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    iput-object p2, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTo:Lcom/amap/mapapi/core/GeoPoint;

    iput p3, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTrans:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint$b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    new-instance v4, Lcom/amap/mapapi/core/i;

    new-instance v5, Lcom/amap/mapapi/core/GeoPoint$b;

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/amap/mapapi/core/GeoPoint$b;-><init>(DD)V

    invoke-static {p1}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {v4, v5, v0, v6, v6}, Lcom/amap/mapapi/core/i;-><init>(Lcom/amap/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amap/mapapi/core/m;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint$b;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTrans:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    iput-object p3, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTo:Lcom/amap/mapapi/core/GeoPoint;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/route/Route$FromAndTo;->a(Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint$b;

    move-result-object v0

    new-instance v1, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v2, v0, Lcom/amap/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v4, v5}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    iput-object v1, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/amap/mapapi/route/Route$FromAndTo;->a(Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint$b;

    move-result-object v0

    new-instance v1, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v2, v0, Lcom/amap/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v4, v5}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    iput-object v1, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTo:Lcom/amap/mapapi/core/GeoPoint;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/route/Route$FromAndTo;->a(Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint$b;

    move-result-object v0

    new-instance v1, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v2, v0, Lcom/amap/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v4, v5}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    iput-object v1, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {p0, p1, p3}, Lcom/amap/mapapi/route/Route$FromAndTo;->a(Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint$b;

    move-result-object v0

    new-instance v1, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v2, v0, Lcom/amap/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v4, v5}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    iput-object v1, p0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTo:Lcom/amap/mapapi/core/GeoPoint;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/amap/mapapi/route/Route$FromAndTo;Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/route/Route$FromAndTo;->a(Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;I)V

    return-void
.end method
