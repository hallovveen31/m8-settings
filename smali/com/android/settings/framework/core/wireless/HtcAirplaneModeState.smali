.class final enum Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;
.super Ljava/lang/Enum;
.source "HtcAirplaneModeState.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

.field public static final enum STATE_ERROR:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

.field public static final enum STATE_INIT:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

.field public static final enum STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

.field public static final enum STATE_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

.field public static final enum STATE_SYNC:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

.field public static final enum STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

.field public static final enum STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    const-string v1, "STATE_SYNC"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    const-string v1, "STATE_TURNING_ON"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    const-string v1, "STATE_ON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    const-string v1, "STATE_TURNING_OFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_ON:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->$VALUES:[Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getServiceStateName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "STATE_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STATE_IN_SERVICE"

    goto :goto_0

    :pswitch_1
    const-string v0, "STATE_OUT_OF_SERVICE"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATE_EMERGENCY_ONLY"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATE_POWER_OFF"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATE_NETWORK_SEARCHING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;->$VALUES:[Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/wireless/HtcAirplaneModeState;

    return-object v0
.end method
