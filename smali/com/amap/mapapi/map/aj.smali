.class abstract Lcom/amap/mapapi/map/aj;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/aj$1;,
        Lcom/amap/mapapi/map/aj$a;,
        Lcom/amap/mapapi/map/aj$b;
    }
.end annotation


# static fields
.field static j:F

.field private static p:Ljava/lang/reflect/Method;

.field private static q:Ljava/lang/reflect/Method;

.field private static r:Z

.field private static s:Z


# instance fields
.field a:Lcom/amap/mapapi/map/aj$b;

.field b:I

.field c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/Matrix;

.field e:Landroid/graphics/PointF;

.field f:Landroid/graphics/PointF;

.field g:Landroid/graphics/PointF;

.field h:F

.field i:F

.field k:Z

.field l:Z

.field m:Z

.field public n:I

.field public o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/high16 v0, 0x3f80

    sput v0, Lcom/amap/mapapi/map/aj;->j:F

    .line 43
    sput-boolean v1, Lcom/amap/mapapi/map/aj;->r:Z

    .line 44
    sput-boolean v1, Lcom/amap/mapapi/map/aj;->s:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/amap/mapapi/map/aj;->b:I

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->d:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->e:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    .line 29
    iput v2, p0, Lcom/amap/mapapi/map/aj;->h:F

    .line 30
    iput v2, p0, Lcom/amap/mapapi/map/aj;->i:F

    .line 32
    iput-boolean v1, p0, Lcom/amap/mapapi/map/aj;->k:Z

    .line 33
    iput-boolean v1, p0, Lcom/amap/mapapi/map/aj;->l:Z

    .line 34
    iput-boolean v1, p0, Lcom/amap/mapapi/map/aj;->m:Z

    .line 46
    iput v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/map/aj;->o:J

    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/mapapi/map/aj$b;)Lcom/amap/mapapi/map/aj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    .line 58
    new-instance v0, Lcom/amap/mapapi/map/aj$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/aj$a;-><init>(Lcom/amap/mapapi/map/aj$1;)V

    .line 59
    iput-object p1, v0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    .line 60
    return-object v0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/amap/mapapi/map/aj;->r:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/amap/mapapi/map/aj;->p:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic b(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-static {p0}, Lcom/amap/mapapi/map/aj;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/amap/mapapi/map/aj;->q:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static c(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 84
    sget-boolean v0, Lcom/amap/mapapi/map/aj;->s:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sput-boolean v1, Lcom/amap/mapapi/map/aj;->s:Z

    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getX"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/map/aj;->p:Ljava/lang/reflect/Method;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getY"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amap/mapapi/map/aj;->q:Ljava/lang/reflect/Method;

    .line 92
    sget-object v0, Lcom/amap/mapapi/map/aj;->p:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/mapapi/map/aj;->q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/mapapi/map/aj;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;)Z
.end method
