.class final enum Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;
.super Ljava/lang/Enum;
.source "HtcMobileDataState.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

.field public static final enum NETWORK_STATE_CONNECTED:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

.field public static final enum NETWORK_STATE_CONNECTING:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

.field public static final enum NETWORK_STATE_DISCONNECTING:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

.field public static final enum NETWORK_STATE_SUSPEND:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

.field public static final enum NETWORK_STATE_UNKNOWN:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

.field public static final enum STATE_OFF:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

.field public static final enum STATE_ON:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    .line 24
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    const-string v1, "STATE_ON"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->STATE_ON:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    .line 26
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    const-string v1, "NETWORK_STATE_CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_CONNECTED:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    .line 27
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    const-string v1, "NETWORK_STATE_SUSPEND"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_SUSPEND:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    .line 28
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    const-string v1, "NETWORK_STATE_CONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_CONNECTING:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    .line 29
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    const-string v1, "NETWORK_STATE_DISCONNECTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_DISCONNECTING:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    .line 30
    new-instance v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    const-string v1, "NETWORK_STATE_UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_UNKNOWN:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    sget-object v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->STATE_ON:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_CONNECTED:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_SUSPEND:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_CONNECTING:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_DISCONNECTING:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_UNKNOWN:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->$VALUES:[Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public static getBaseState(Z)Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;
    .locals 1
    .parameter "enabled"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->STATE_ON:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/net/NetworkInfo$State;)Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;
    .locals 2
    .parameter "state"

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_UNKNOWN:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_CONNECTED:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_SUSPEND:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    goto :goto_0

    .line 48
    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_CONNECTING:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    goto :goto_0

    .line 50
    :pswitch_3
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->NETWORK_STATE_DISCONNECTING:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->$VALUES:[Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataState;

    return-object v0
.end method
