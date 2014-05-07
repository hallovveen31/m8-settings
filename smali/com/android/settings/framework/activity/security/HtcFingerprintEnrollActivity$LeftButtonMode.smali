.class final enum Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;
.super Ljava/lang/Enum;
.source "HtcFingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

.field public static final enum Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

.field public static final enum CancelDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x7f0c0c2b

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    const-string v1, "Cancel"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    const-string v1, "CancelDisabled"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->CancelDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->Cancel:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->CancelDisabled:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

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

    iput p3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->text:I

    iput-boolean p4, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->enabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;->$VALUES:[Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$LeftButtonMode;

    return-object v0
.end method
