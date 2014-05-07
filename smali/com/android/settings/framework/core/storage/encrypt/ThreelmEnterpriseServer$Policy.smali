.class public Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;
.super Ljava/lang/Object;
.source "ThreelmEnterpriseServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# static fields
.field public static ACTION_EMERGENCY_LOCK_POLICY_STATUS_CHANGE:Ljava/lang/String; = null

.field public static EXTRA_EMERGENCY_LOCK_POLICY_STATUS:Ljava/lang/String; = null

.field public static EXTRA_EMERGENCY_LOCK_POLICY_STATUS_DISABLED:I = 0x0

.field public static EXTRA_EMERGENCY_LOCK_POLICY_STATUS_ENABLED:I = 0x0

.field public static final SETTINGS_SECURE_EMERGENCY_LOCK_TEXT:Ljava/lang/String; = "emergency_lock"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "com.htc.3lm.intent.EMERGENCY_LOCK_POLICY_STATUS_CHANGE"

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->ACTION_EMERGENCY_LOCK_POLICY_STATUS_CHANGE:Ljava/lang/String;

    .line 104
    const-string v0, "com.htc.3lm.intent.extra.POLICY_STATUS"

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->EXTRA_EMERGENCY_LOCK_POLICY_STATUS:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->EXTRA_EMERGENCY_LOCK_POLICY_STATUS_DISABLED:I

    .line 123
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->EXTRA_EMERGENCY_LOCK_POLICY_STATUS_ENABLED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
