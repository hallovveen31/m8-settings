.class public Lcom/a/a/a/j;
.super Ljava/lang/Object;
.source "TelephoneBean.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/a/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/a/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/a/a/a/j;->b:Lcom/a/a/a/j;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Lcom/a/a/a/j;
    .locals 1

    sget-object v0, Lcom/a/a/a/j;->b:Lcom/a/a/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/j;

    invoke-direct {v0}, Lcom/a/a/a/j;-><init>()V

    sput-object v0, Lcom/a/a/a/j;->b:Lcom/a/a/a/j;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/j;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/a/a/a/j;->b:Lcom/a/a/a/j;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/a/a/a/j;->a:Ljava/lang/String;

    return-object v0
.end method
