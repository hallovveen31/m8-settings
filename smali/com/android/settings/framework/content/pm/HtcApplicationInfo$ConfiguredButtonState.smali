.class public final enum Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;
.super Ljava/lang/Enum;
.source "HtcApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/content/pm/HtcApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfiguredButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

.field public static final enum DEFAULT:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

.field public static final enum DISABLE_BUTTON_DISABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

.field public static final enum DISABLE_BUTTON_ENABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

.field public static final enum UNINSTALL_BUTTON_DISABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

.field public static final enum UNINSTALL_BUTTON_ENABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DEFAULT:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    .line 67
    new-instance v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    const-string v1, "DISABLE_BUTTON_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DISABLE_BUTTON_ENABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    .line 70
    new-instance v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    const-string v1, "DISABLE_BUTTON_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DISABLE_BUTTON_DISABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    .line 73
    new-instance v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    const-string v1, "UNINSTALL_BUTTON_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->UNINSTALL_BUTTON_ENABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    .line 76
    new-instance v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    const-string v1, "UNINSTALL_BUTTON_DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->UNINSTALL_BUTTON_DISABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    sget-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DEFAULT:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DISABLE_BUTTON_ENABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DISABLE_BUTTON_DISABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->UNINSTALL_BUTTON_ENABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->UNINSTALL_BUTTON_DISABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->$VALUES:[Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getConfiguredButtonState(I)Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 96
    sget-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DEFAULT:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    :goto_0
    return-object v0

    .line 87
    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DISABLE_BUTTON_DISABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->DISABLE_BUTTON_ENABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    goto :goto_0

    .line 91
    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->UNINSTALL_BUTTON_DISABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    goto :goto_0

    .line 93
    :pswitch_3
    sget-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->UNINSTALL_BUTTON_ENABLED:Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->$VALUES:[Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    return-object v0
.end method
