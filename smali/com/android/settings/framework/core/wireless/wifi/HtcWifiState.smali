.class final enum Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;
.super Ljava/lang/Enum;
.source "HtcWifiState.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

.field public static final enum STATE_ERROR:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

.field public static final enum STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

.field public static final enum STATE_INIT:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

.field public static final enum STATE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

.field public static final enum STATE_ON:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

.field public static final enum STATE_SYNC:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

.field public static final enum STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

.field public static final enum STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const-string v1, "STATE_SYNC"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const-string v1, "STATE_FAKE_OFF"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const-string v1, "STATE_TURNING_ON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const-string v1, "STATE_ON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_ON:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const-string v1, "STATE_TURNING_OFF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_ON:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->$VALUES:[Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

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

.method public static getBaseState(I)Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->STATE_ON:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;->$VALUES:[Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/wireless/wifi/HtcWifiState;

    return-object v0
.end method
