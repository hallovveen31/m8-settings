.class public Lcom/a/a/a/j;
.super Ljava/lang/Object;
.source "TelephoneBean.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/a/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/a/a/a/j;->a:Ljava/lang/String;

    .line 9
    sput-object v0, Lcom/a/a/a/j;->b:Lcom/a/a/a/j;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Lcom/a/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 16
    sget-object v0, Lcom/a/a/a/j;->b:Lcom/a/a/a/j;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/a/a/a/j;

    invoke-direct {v0}, Lcom/a/a/a/j;-><init>()V

    sput-object v0, Lcom/a/a/a/j;->b:Lcom/a/a/a/j;

    .line 18
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/j;->a:Ljava/lang/String;

    .line 21
    :cond_0
    sget-object v0, Lcom/a/a/a/j;->b:Lcom/a/a/a/j;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/a/a/a/j;->a:Ljava/lang/String;

    return-object v0
.end method
