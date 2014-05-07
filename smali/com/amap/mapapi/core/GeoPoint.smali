.class public Lcom/amap/mapapi/core/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;,
        Lcom/amap/mapapi/core/GeoPoint$b;,
        Lcom/amap/mapapi/core/GeoPoint$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field static final a:[D

.field static final b:[D

.field static final c:[Lcom/amap/mapapi/core/GeoPoint$a;


# instance fields
.field private d:J

.field private e:J

.field private f:D

.field private g:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x400

    const/16 v5, 0x200

    const/16 v4, 0x100

    const/16 v3, 0x80

    const/16 v1, 0x15

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/mapapi/core/GeoPoint;->a:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/amap/mapapi/core/GeoPoint;->b:[D

    new-array v0, v1, [Lcom/amap/mapapi/core/GeoPoint$a;

    const/4 v1, 0x0

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    invoke-direct {v2, v3, v3}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    invoke-direct {v2, v4, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    invoke-direct {v2, v5, v5}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    invoke-direct {v2, v6, v6}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/16 v3, 0x800

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/16 v3, 0x1000

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/16 v3, 0x2000

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/16 v3, 0x4000

    const/16 v4, 0x4000

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const v3, 0x8000

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x1

    const/high16 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x2

    const/high16 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x4

    const/high16 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x8

    const/high16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x10

    const/high16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x20

    const/high16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x40

    const/high16 v4, 0x40

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x80

    const/high16 v4, 0x80

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x100

    const/high16 v4, 0x100

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x200

    const/high16 v4, 0x200

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x400

    const/high16 v4, 0x400

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/amap/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x800

    const/high16 v4, 0x800

    invoke-direct {v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/mapapi/core/GeoPoint;->c:[Lcom/amap/mapapi/core/GeoPoint$a;

    new-instance v0, Lcom/amap/mapapi/core/f;

    invoke-direct {v0}, Lcom/amap/mapapi/core/f;-><init>()V

    sput-object v0, Lcom/amap/mapapi/core/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 0x8
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0xe6t 0x3ft
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0xf6t 0x3ft
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x6t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x16t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x26t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x36t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x46t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x56t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x66t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x76t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x86t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x96t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0xa6t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0xb6t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0xc6t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0xd6t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0xe6t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0xf6t 0x40t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x6t 0x41t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x16t 0x41t
        0x17t 0x6ct 0xc1t 0x16t 0x6ct 0xc1t 0x26t 0x41t
    .end array-data

    :array_1
    .array-data 0x8
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x44t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x54t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x64t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x74t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x84t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x94t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0xa4t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0xb4t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0xc4t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0xd4t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0xe4t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0xf4t 0x40t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x4t 0x41t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x14t 0x41t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x24t 0x41t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x34t 0x41t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x44t 0x41t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x54t 0x41t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x64t 0x41t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x74t 0x41t
        0x83t 0xc8t 0xc9t 0x6dt 0x30t 0x5ft 0x84t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/high16 v2, -0x8000

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    iput-wide v4, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide v4, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    return-void
.end method

.method public constructor <init>(DDJJ)V
    .locals 4

    const-wide/high16 v2, -0x8000

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    iput-wide p1, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iput-wide p3, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    iput-wide p5, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide p7, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    return-void
.end method

.method public constructor <init>(DDZ)V
    .locals 6

    const-wide/high16 v4, -0x8000

    const-wide v2, 0x412e848000000000L

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide v4, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    mul-double v0, p1, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    mul-double v0, p3, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iput-wide p3, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 4

    const-wide/high16 v2, -0x8000

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4

    const-wide/high16 v2, -0x8000

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    iput-wide p1, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide p3, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-wide/high16 v2, -0x8000

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iput-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/mapapi/core/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/mapapi/core/GeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    return-wide v0
.end method

.method public a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    return-wide v0
.end method

.method public b(D)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    return-void
.end method

.method public c()D
    .locals 4

    const-wide/16 v2, 0x1

    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    const-wide v2, 0x41731bf84570a3d7L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    :cond_2
    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    goto :goto_0
.end method

.method public d()D
    .locals 4

    const-wide/16 v2, 0x1

    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L

    div-double/2addr v0, v2

    const-wide v2, 0x41731bf84570a3d7L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    :cond_2
    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/amap/mapapi/core/GeoPoint;
    .locals 9

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iget-wide v3, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    iget-wide v5, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iget-wide v7, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    invoke-direct/range {v0 .. v8}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDJJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    iget-wide v3, p1, Lcom/amap/mapapi/core/GeoPoint;->f:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    iget-wide v3, p1, Lcom/amap/mapapi/core/GeoPoint;->g:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    iget-wide v3, p1, Lcom/amap/mapapi/core/GeoPoint;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    iget-wide v3, p1, Lcom/amap/mapapi/core/GeoPoint;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitudeE6()I
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    long-to-int v0, v0

    return v0
.end method

.method public getLongitudeE6()I
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    long-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->g:D

    const-wide/high16 v2, 0x401c

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/amap/mapapi/core/GeoPoint;->f:D

    const-wide/high16 v4, 0x4026

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/amap/mapapi/core/GeoPoint;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
