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

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    sput v0, Lcom/amap/mapapi/map/aj;->j:F

    sput-boolean v1, Lcom/amap/mapapi/map/aj;->r:Z

    sput-boolean v1, Lcom/amap/mapapi/map/aj;->s:Z

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/mapapi/map/aj;->b:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->e:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    iput v2, p0, Lcom/amap/mapapi/map/aj;->h:F

    iput v2, p0, Lcom/amap/mapapi/map/aj;->i:F

    iput-boolean v1, p0, Lcom/amap/mapapi/map/aj;->k:Z

    iput-boolean v1, p0, Lcom/amap/mapapi/map/aj;->l:Z

    iput-boolean v1, p0, Lcom/amap/mapapi/map/aj;->m:Z

    iput v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/map/aj;->o:J

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/mapapi/map/aj$b;)Lcom/amap/mapapi/map/aj;
    .locals 2

    new-instance v0, Lcom/amap/mapapi/map/aj$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/aj$a;-><init>(Lcom/amap/mapapi/map/aj$1;)V

    iput-object p1, v0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    return-object v0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/amap/mapapi/map/aj;->r:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/amap/mapapi/map/aj;->p:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic b(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0}, Lcom/amap/mapapi/map/aj;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/amap/mapapi/map/aj;->q:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static c(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v1, 0x1

    sget-boolean v0, Lcom/amap/mapapi/map/aj;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/amap/mapapi/map/aj;->s:Z

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

    sget-object v0, Lcom/amap/mapapi/map/aj;->p:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/mapapi/map/aj;->q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/mapapi/map/aj;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;)Z
.end method
