.class final enum Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;
.super Ljava/lang/Enum;
.source "HtcFingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RightButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

.field public static final enum Continue:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

.field public static final enum ContinueDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

.field public static final enum Retry:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

.field public static final enum RetryDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0x7f0c0f39

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    const-string v1, "Continue"

    const v2, 0x7f0c0f3a

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Continue:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    const-string v1, "ContinueDisabled"

    const v2, 0x7f0c0f3a

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->ContinueDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    const-string v1, "Retry"

    invoke-direct {v0, v1, v5, v7, v4}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Retry:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    const-string v1, "RetryDisabled"

    invoke-direct {v0, v1, v6, v7, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->RetryDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Continue:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->ContinueDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->Retry:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->RetryDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->text:I

    iput-boolean p4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->enabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$RightButtonMode;

    return-object v0
.end method
