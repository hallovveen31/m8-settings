.class public Lcom/amap/mapapi/route/Route;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/route/Route$b;,
        Lcom/amap/mapapi/route/Route$c;,
        Lcom/amap/mapapi/route/Route$e;,
        Lcom/amap/mapapi/route/Route$a;,
        Lcom/amap/mapapi/route/Route$d;,
        Lcom/amap/mapapi/route/Route$FromAndTo;
    }
.end annotation


# static fields
.field public static final BusDefault:I = 0x0

.field public static final BusLeaseChange:I = 0x2

.field public static final BusLeaseWalk:I = 0x3

.field public static final BusMostComfortable:I = 0x4

.field public static final BusSaveMoney:I = 0x1

.field public static final DrivingDefault:I = 0xa

.field public static final DrivingLeastDistance:I = 0xc

.field public static final DrivingNoFastRoad:I = 0xd

.field public static final DrivingSaveMoney:I = 0xb


# instance fields
.field private a:Lcom/amap/mapapi/core/GeoPoint;

.field private b:Lcom/amap/mapapi/core/GeoPoint;

.field private c:I

.field public mHelper:Lcom/amap/mapapi/route/Route$d;

.field protected mSegs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/route/Segment;",
            ">;"
        }
    .end annotation
.end field

.field protected mStartPlace:Ljava/lang/String;

.field protected mTargetPlace:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/amap/mapapi/route/Route;->a:Lcom/amap/mapapi/core/GeoPoint;

    .line 55
    iput-object v0, p0, Lcom/amap/mapapi/route/Route;->b:Lcom/amap/mapapi/core/GeoPoint;

    .line 804
    iput p1, p0, Lcom/amap/mapapi/route/Route;->c:I

    .line 805
    invoke-static {p1}, Lcom/amap/mapapi/route/Route;->isBus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    new-instance v0, Lcom/amap/mapapi/route/Route$a;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/route/Route$a;-><init>(Lcom/amap/mapapi/route/Route;)V

    iput-object v0, p0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    .line 814
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-static {p1}, Lcom/amap/mapapi/route/Route;->isDrive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    new-instance v0, Lcom/amap/mapapi/route/Route$b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/route/Route$b;-><init>(Lcom/amap/mapapi/route/Route;)V

    iput-object v0, p0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    goto :goto_0

    .line 809
    :cond_1
    invoke-static {p1}, Lcom/amap/mapapi/route/Route;->isWalk(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    new-instance v0, Lcom/amap/mapapi/route/Route$c;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/route/Route$c;-><init>(Lcom/amap/mapapi/route/Route;)V

    iput-object v0, p0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    goto :goto_0

    .line 812
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unkown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(DDLjava/net/Proxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 168
    const-string v7, ""

    .line 169
    new-instance v8, Lcom/amap/mapapi/core/p;

    new-instance v0, Lcom/amap/mapapi/core/q;

    const/4 v5, 0x1

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/core/q;-><init>(DDIZ)V

    const/4 v1, 0x0

    invoke-direct {v8, v0, p4, p5, v1}, Lcom/amap/mapapi/core/p;-><init>(Lcom/amap/mapapi/core/q;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v8}, Lcom/amap/mapapi/core/p;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 174
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 175
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v7

    goto :goto_0
.end method

.method static a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 845
    const/16 v0, 0x2710

    if-le p0, v0, :cond_0

    .line 847
    div-int/lit16 v0, p0, 0x3e8

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u516c\u91cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    :goto_0
    return-object v0

    .line 851
    :cond_0
    const/16 v0, 0x3e8

    if-le p0, v0, :cond_1

    .line 852
    int-to-float v0, p0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 853
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 854
    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u516c\u91cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_1
    const/16 v0, 0x64

    if-le p0, v0, :cond_2

    .line 859
    div-int/lit8 v0, p0, 0x32

    mul-int/lit8 v0, v0, 0x32

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7c73"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 863
    :cond_2
    div-int/lit8 v0, p0, 0xa

    mul-int/lit8 v0, v0, 0xa

    .line 864
    if-nez v0, :cond_3

    .line 865
    const/16 v0, 0xa

    .line 868
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7c73"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 7

    .prologue
    const v0, 0x7fffffff

    const/high16 v3, -0x8000

    .line 71
    .line 76
    iget-object v1, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    .line 77
    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getLowerLeftPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v4

    .line 79
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    .line 80
    if-ge v4, v2, :cond_0

    move v2, v4

    .line 83
    :cond_0
    if-ge v0, v1, :cond_5

    :goto_1
    move v1, v0

    .line 86
    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    .line 89
    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getUpperRightPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v5

    .line 91
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    .line 92
    if-le v5, v4, :cond_2

    move v4, v5

    .line 96
    :cond_2
    if-le v0, v3, :cond_4

    :goto_3
    move v3, v0

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/route/Route;->a:Lcom/amap/mapapi/core/GeoPoint;

    .line 102
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v0, v3, v4}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/route/Route;->b:Lcom/amap/mapapi/core/GeoPoint;

    .line 103
    return-void

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static calculateRoute(Landroid/content/Context;Lcom/amap/mapapi/route/Route$FromAndTo;I)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/mapapi/route/Route$FromAndTo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/route/Route;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 121
    invoke-static {p0}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    .line 122
    new-instance v6, Lcom/amap/mapapi/route/f;

    invoke-direct {v6, p1, p2}, Lcom/amap/mapapi/route/f;-><init>(Lcom/amap/mapapi/route/Route$FromAndTo;I)V

    .line 123
    invoke-static {p0}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v4

    .line 124
    const-string v5, ""

    .line 127
    iget-object v0, p1, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v1, p1, Lcom/amap/mapapi/route/Route$FromAndTo;->mTo:Lcom/amap/mapapi/core/GeoPoint;

    iget v2, p1, Lcom/amap/mapapi/route/Route$FromAndTo;->mTrans:I

    invoke-static {p1, p0, v0, v1, v2}, Lcom/amap/mapapi/route/Route$FromAndTo;->a(Lcom/amap/mapapi/route/Route$FromAndTo;Landroid/content/Context;Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;I)V

    .line 128
    iget-object v0, p1, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    .line 130
    iget-object v2, p1, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    .line 132
    invoke-static {p2}, Lcom/amap/mapapi/route/Route;->isBus(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 134
    invoke-static/range {v0 .. v5}, Lcom/amap/mapapi/route/Route;->a(DDLjava/net/Proxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :goto_0
    return-object v0

    .line 139
    :cond_1
    invoke-virtual {v6, v0}, Lcom/amap/mapapi/route/f;->a(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/amap/mapapi/route/a;

    invoke-direct {v0, v6, v4, v5, v8}, Lcom/amap/mapapi/route/a;-><init>(Lcom/amap/mapapi/route/f;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_1
    invoke-virtual {v0}, Lcom/amap/mapapi/route/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {p2}, Lcom/amap/mapapi/route/Route;->isWalk(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    new-instance v0, Lcom/amap/mapapi/route/g;

    invoke-direct {v0, v6, v4, v5, v8}, Lcom/amap/mapapi/route/g;-><init>(Lcom/amap/mapapi/route/f;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_3
    new-instance v0, Lcom/amap/mapapi/route/c;

    invoke-direct {v0, v6, v4, v5, v8}, Lcom/amap/mapapi/route/c;-><init>(Lcom/amap/mapapi/route/f;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isBus(I)Z
    .locals 1
    .parameter

    .prologue
    .line 821
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrive(I)Z
    .locals 1
    .parameter

    .prologue
    .line 817
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWalk(I)Z
    .locals 1
    .parameter

    .prologue
    .line 827
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/route/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    return-object v0
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/route/Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    iput-object p1, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    .line 205
    return-void
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    .line 65
    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_0
    return v1
.end method

.method public getLowerLeftPoint()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->a:Lcom/amap/mapapi/core/GeoPoint;

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/amap/mapapi/route/Route;->b()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->a:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/amap/mapapi/route/Route;->c:I

    return v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentIndex(Lcom/amap/mapapi/route/Segment;)I
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStartPlace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mStartPlace:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()Lcom/amap/mapapi/core/GeoPoint;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getFirstPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getStep(I)Lcom/amap/mapapi/route/Segment;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    return-object v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStepedDescription(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mHelper:Lcom/amap/mapapi/route/Route$d;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route$d;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetPlace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mTargetPlace:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPos()Lcom/amap/mapapi/core/GeoPoint;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->mSegs:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getLastPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getUpperRightPoint()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->b:Lcom/amap/mapapi/core/GeoPoint;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/amap/mapapi/route/Route;->b()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/route/Route;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public setStartPlace(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amap/mapapi/route/Route;->mStartPlace:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setTargetPlace(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amap/mapapi/route/Route;->mTargetPlace:Ljava/lang/String;

    .line 197
    return-void
.end method
