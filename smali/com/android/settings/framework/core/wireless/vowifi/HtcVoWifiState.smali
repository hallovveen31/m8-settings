.class final enum Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;
.super Ljava/lang/Enum;
.source "HtcVoWifiState.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

.field public static final enum STATE_ERROR:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

.field public static final enum STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

.field public static final enum STATE_INIT:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

.field public static final enum STATE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

.field public static final enum STATE_ON:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

.field public static final enum STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

.field public static final enum STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

.field public static final enum STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .line 27
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .line 33
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    const-string v1, "STATE_SYNC"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .line 39
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    const-string v1, "STATE_FAKE_OFF"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .line 44
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .line 49
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    const-string v1, "STATE_TURNING_ON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .line 54
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    const-string v1, "STATE_ON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_ON:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .line 59
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    const-string v1, "STATE_TURNING_OFF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_ON:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->$VALUES:[Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getBaseState(I)Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;
    .locals 1
    .parameter "state"

    .prologue
    .line 70
    sparse-switch p0, :sswitch_data_0

    .line 89
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    :goto_0
    return-object v0

    .line 74
    :sswitch_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    goto :goto_0

    .line 76
    :sswitch_1
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    goto :goto_0

    .line 78
    :sswitch_2
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    goto :goto_0

    .line 85
    :sswitch_3
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_ON:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_3
        0x2bc -> :sswitch_3
        0x320 -> :sswitch_3
        0x384 -> :sswitch_3
        0x3e8 -> :sswitch_3
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->$VALUES:[Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    return-object v0
.end method
