.class public Lcom/amap/mapapi/core/c;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/core/c$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:Lcom/amap/mapapi/core/n;

.field public static h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

.field public static i:I

.field public static j:I

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Z

.field public static n:Z

.field public static o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    const/16 v0, 0x12

    sput v0, Lcom/amap/mapapi/core/c;->a:I

    .line 31
    const/4 v0, 0x4

    sput v0, Lcom/amap/mapapi/core/c;->b:I

    .line 32
    const/16 v0, 0x14

    sput v0, Lcom/amap/mapapi/core/c;->c:I

    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/amap/mapapi/core/c;->d:I

    .line 43
    sput v1, Lcom/amap/mapapi/core/c;->e:I

    .line 76
    sput v1, Lcom/amap/mapapi/core/c;->f:I

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    .line 82
    sget-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sput-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    .line 84
    sput v1, Lcom/amap/mapapi/core/c;->i:I

    .line 85
    sput v1, Lcom/amap/mapapi/core/c;->j:I

    .line 108
    const-string v0, "V1.3.3"

    sput-object v0, Lcom/amap/mapapi/core/c;->k:Ljava/lang/String;

    .line 110
    const-string v0, "V1.3.3"

    sput-object v0, Lcom/amap/mapapi/core/c;->l:Ljava/lang/String;

    .line 117
    sput-boolean v2, Lcom/amap/mapapi/core/c;->m:Z

    .line 122
    sput-boolean v2, Lcom/amap/mapapi/core/c;->n:Z

    .line 127
    sput-boolean v1, Lcom/amap/mapapi/core/c;->o:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
