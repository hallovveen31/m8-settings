.class public Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;
.super Ljava/lang/Object;
.source "HtcApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/content/pm/HtcApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfiguredExtFlag"
.end annotation


# static fields
.field public static DISABLE_BUTTON_DEFAULT:I

.field public static DISABLE_BUTTON_DISABLED:I

.field public static DISABLE_BUTTON_GONE:I

.field public static DISABLE_BUTTON_RESERVE:I

.field public static FORCE_STOP_BUTTON_DEFAULT:I

.field public static FORCE_STOP_BUTTON_DISABLE:I

.field public static FORCE_STOP_BUTTON_GONE:I

.field public static FORCE_STOP_BUTTON_RESERVE:I

.field public static NOTIFICATION_BUTTON_DEFAULT:I

.field public static NOTIFICATION_BUTTON_DISABLE:I

.field public static NOTIFICATION_BUTTON_GONE:I

.field public static NOTIFICATION_BUTTON_RESERVE:I

.field public static UNINSTALL_BUTTON_DEFAULT:I

.field public static UNINSTALL_BUTTON_DISABLE:I

.field public static UNINSTALL_BUTTON_GONE:I

.field public static UNINSTALL_BUTTON_RESERVE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    sput v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_DEFAULT:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_DISABLED:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_RESERVE:I

    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_GONE:I

    .line 36
    sput v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->UNINSTALL_BUTTON_DEFAULT:I

    .line 37
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->UNINSTALL_BUTTON_DISABLE:I

    .line 38
    const/16 v0, 0x8

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->UNINSTALL_BUTTON_RESERVE:I

    .line 39
    const/16 v0, 0xc

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->UNINSTALL_BUTTON_GONE:I

    .line 42
    sput v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->FORCE_STOP_BUTTON_DEFAULT:I

    .line 43
    const/16 v0, 0x10

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->FORCE_STOP_BUTTON_DISABLE:I

    .line 44
    const/16 v0, 0x20

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->FORCE_STOP_BUTTON_RESERVE:I

    .line 45
    const/16 v0, 0x30

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->FORCE_STOP_BUTTON_GONE:I

    .line 48
    sput v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->NOTIFICATION_BUTTON_DEFAULT:I

    .line 49
    const/16 v0, 0x40

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->NOTIFICATION_BUTTON_DISABLE:I

    .line 50
    const/16 v0, 0x80

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->NOTIFICATION_BUTTON_RESERVE:I

    .line 51
    const/16 v0, 0xc0

    sput v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->NOTIFICATION_BUTTON_GONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
