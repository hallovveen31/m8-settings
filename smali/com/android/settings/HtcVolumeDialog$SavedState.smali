.class Lcom/android/settings/HtcVolumeDialog$SavedState;
.super Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;
.source "HtcVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/HtcVolumeDialog$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/android/settings/HtcVolumeDialog$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/HtcVolumeDialog$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/HtcVolumeDialog$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 219
    new-instance v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-direct {v0}, Lcom/android/settings/HtcVolumeDialog$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    .line 227
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    .line 228
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->originalVolume:I

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 219
    new-instance v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-direct {v0}, Lcom/android/settings/HtcVolumeDialog$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    .line 248
    return-void
.end method


# virtual methods
.method getVolumeStore()Lcom/android/settings/HtcVolumeDialog$VolumeStore;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    iget v0, v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    iget v0, v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    return-void
.end method
