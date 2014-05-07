.class public Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags$RadioType;
.super Ljava/lang/Object;
.source "HtcIFeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioType"
.end annotation


# static fields
.field public static final CDMA:I = 0x2

.field public static final CDMA_LTE:I = 0x5

.field public static final GSM_CDMA:I = 0x7

.field public static final GSM_GSM:I = 0x6

.field public static final KEY:Ljava/lang/String; = "radio_type"

.field public static final TDSCDMA:I = 0x3

.field public static final TDSCDMA_TDLTE:I = 0x9

.field public static final UMTS:I = 0x1

.field public static final UMTS_LTE:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final WORLDPHONE_GSM:I = 0xa

.field public static final WORLDPHONE_LTE_BOUND_CDMA:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .parameter "radioType"

    .prologue
    .line 324
    packed-switch p0, :pswitch_data_0

    .line 356
    const-string v0, "UNKNOWN"

    .line 358
    .local v0, name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 326
    .end local v0           #name:Ljava/lang/String;
    :pswitch_0
    const-string v0, "UMTS"

    .line 327
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 329
    .end local v0           #name:Ljava/lang/String;
    :pswitch_1
    const-string v0, "CDMA"

    .line 330
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 332
    .end local v0           #name:Ljava/lang/String;
    :pswitch_2
    const-string v0, "TDSCDMA"

    .line 333
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 335
    .end local v0           #name:Ljava/lang/String;
    :pswitch_3
    const-string v0, "UMTS + LTE"

    .line 336
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v0           #name:Ljava/lang/String;
    :pswitch_4
    const-string v0, "CDMA + eHRPD + LTE"

    .line 339
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 341
    .end local v0           #name:Ljava/lang/String;
    :pswitch_5
    const-string v0, "GSM_GSM"

    .line 342
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 344
    .end local v0           #name:Ljava/lang/String;
    :pswitch_6
    const-string v0, "GSM_CDMA"

    .line 345
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v0           #name:Ljava/lang/String;
    :pswitch_7
    const-string v0, "WORLDPHONE + LTE_BOUND_CDMA"

    .line 348
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 350
    .end local v0           #name:Ljava/lang/String;
    :pswitch_8
    const-string v0, "TDSCDMA + TDLTE"

    .line 351
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 353
    .end local v0           #name:Ljava/lang/String;
    :pswitch_9
    const-string v0, "WORLDPHONE + GSM"

    .line 354
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
