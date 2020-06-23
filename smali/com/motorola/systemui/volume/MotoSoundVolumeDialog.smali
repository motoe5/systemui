.class public Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;
.super Lcom/android/systemui/volume/VolumeDialogImpl;
.source "MotoSoundVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/multibluetooth/MultiBTDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedMultiBT:Z

.field private mMultiBTConnected:Z

.field private mMultiBTHelper:Lcom/motorola/multibluetooth/MultiBTAppHelper;

.field private mTempowDevicesSeekbars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "-this"    # Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    .prologue
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Z
    .locals 1
    .param p0, "-this"    # Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    .prologue
    iget-boolean v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic -set0(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "-this"    # Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;
    .param p1, "-value"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mDeviceList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V
    .locals 0
    .param p0, "-this"    # Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    .prologue
    invoke-direct {p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->resetMediaVolumeSeekbarTint()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V
    .locals 0
    .param p0, "-this"    # Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    .prologue
    invoke-direct {p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->resetSeekBarsTint()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;
    .param p1, "expanded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateMultiBT(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundUtil;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->TAG:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->DEBUG:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTConnected:Z

    .line 59
    new-instance v1, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$1;

    invoke-direct {v1, p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$1;-><init>(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V

    .line 73
    .local v1, "multiBTCallback":Lcom/motorola/multibluetooth/MultiBTAppHelper$MultiBTCallback;
    :try_start_0
    new-instance v2, Lcom/motorola/multibluetooth/MultiBTAppHelper;

    invoke-direct {v2, p1, v1}, Lcom/motorola/multibluetooth/MultiBTAppHelper;-><init>(Landroid/content/Context;Lcom/motorola/multibluetooth/MultiBTAppHelper$MultiBTCallback;)V

    iput-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTHelper:Lcom/motorola/multibluetooth/MultiBTAppHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addMultiBTRow(Lcom/motorola/multibluetooth/MultiBTDevice;I)V
    .locals 3
    .param p1, "device"    # Lcom/motorola/multibluetooth/MultiBTDevice;
    .param p2, "position"    # I

    .prologue
    .line 214
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>()V

    .line 215
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->initMultiBTRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/motorola/multibluetooth/MultiBTDevice;Z)V

    .line 216
    iget-object v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 217
    iget-object v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    return-void
.end method

.method private getMultiBTIconResource(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v1, :cond_0

    return v2

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 146
    .local v0, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v1, :cond_1

    .line 147
    const v1, 0x7f080356

    return v1

    .line 149
    :cond_1
    const v1, 0x7f080355

    return v1
.end method

.method private initMultiBTRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/motorola/multibluetooth/MultiBTDevice;Z)V
    .locals 8
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "device"    # Lcom/motorola/multibluetooth/MultiBTDevice;
    .param p3, "important"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 221
    const/16 v3, 0x3e8

    iput v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 222
    iput-boolean p3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    .line 223
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0130

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 224
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    iget v4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 225
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const v4, 0x7f0a01c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p2}, Lcom/motorola/multibluetooth/MultiBTDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/motorola/systemui/volume/MotoSoundUtil;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 229
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const v4, 0x7f0a011b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 230
    .local v2, "stereo":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/motorola/multibluetooth/MultiBTDevice;->getChannels()I

    move-result v0

    .line 231
    .local v0, "channel":I
    sget-boolean v3, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initMultiBTRow():device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channel is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 233
    const v3, 0x7f0803ce

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const v4, 0x7f0a02e7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 242
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Lcom/motorola/multibluetooth/MultiBTDevice;->getVolume()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 243
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    new-instance v4, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;

    invoke-direct {v4, p0, p2}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;-><init>(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;Lcom/motorola/multibluetooth/MultiBTDevice;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 244
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 245
    iget-object v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 246
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mTempowDevicesSeekbars:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mTempowDevicesSeekbars:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    iput-object v7, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 250
    return-void

    .line 235
    :cond_2
    const/4 v3, -0x3

    if-ne v0, v3, :cond_3

    .line 236
    const v3, 0x7f0803cf

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 239
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private removeMultiBTRows()V
    .locals 5

    .prologue
    .line 189
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 190
    .local v0, "N":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 191
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 192
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget v3, v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 193
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 194
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 197
    .end local v2    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mTempowDevicesSeekbars:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mTempowDevicesSeekbars:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 200
    :cond_2
    return-void
.end method

.method private resetMediaVolumeSeekbarTint()V
    .locals 3

    .prologue
    .line 271
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    .line 272
    .local v0, "mediaRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 274
    iget-object v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    .line 275
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 278
    :cond_0
    return-void
.end method

.method private resetSeekBarsTint()V
    .locals 3

    .prologue
    .line 262
    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mTempowDevicesSeekbars:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mTempowDevicesSeekbars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mTempowDevicesSeekbars:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "seekBar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 264
    .local v0, "seekBar":Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 265
    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 268
    .end local v0    # "seekBar":Landroid/widget/SeekBar;
    .end local v1    # "seekBar$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private updateMediaRow(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mExpandedMultiBT:Z

    .line 204
    invoke-direct {p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateMutliBTRowsVisibility()V

    .line 205
    invoke-virtual {p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 206
    invoke-direct {p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->resetSeekBarsTint()V

    .line 207
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    .line 208
    .local v0, "mediaRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 211
    :cond_0
    return-void
.end method

.method private updateMultiBT(Z)V
    .locals 9
    .param p1, "expanded"    # Z

    .prologue
    const/4 v8, 0x0

    .line 160
    sget-boolean v5, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enter updateMultiBT() expanded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->removeMultiBTRows()V

    .line 162
    iget-object v5, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mDeviceList:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mDeviceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 163
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v2

    .line 164
    .local v2, "mediaRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    if-eqz v2, :cond_2

    .line 165
    iget-object v5, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget v6, v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 166
    .local v4, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-eqz v4, :cond_2

    .line 167
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTConnected:Z

    .line 168
    if-eqz p1, :cond_2

    iget-boolean v5, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v5, :cond_2

    .line 169
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mTempowDevicesSeekbars:Ljava/util/ArrayList;

    .line 170
    iget-object v5, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 171
    .local v3, "mediaStreamPos":I
    iget-boolean v5, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTConnected:Z

    if-eqz v5, :cond_1

    if-ltz v3, :cond_1

    .line 172
    iget-object v5, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mDeviceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/multibluetooth/MultiBTDevice;

    .line 173
    .local v0, "device":Lcom/motorola/multibluetooth/MultiBTDevice;
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->addMultiBTRow(Lcom/motorola/multibluetooth/MultiBTDevice;I)V

    goto :goto_0

    .line 176
    .end local v0    # "device":Lcom/motorola/multibluetooth/MultiBTDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateMutliBTRowsVisibility()V

    .line 177
    invoke-virtual {p0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 185
    .end local v2    # "mediaRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .end local v3    # "mediaStreamPos":I
    .end local v4    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateMediaRow(Z)V

    .line 186
    return-void

    .line 182
    :cond_3
    iput-boolean v8, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTConnected:Z

    goto :goto_1
.end method

.method private updateMutliBTRowsVisibility()V
    .locals 4

    .prologue
    .line 253
    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 254
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 255
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-boolean v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mExpandedMultiBT:Z

    iput-boolean v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    goto :goto_0

    .line 259
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    return-void
.end method


# virtual methods
.method protected dismissH(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 91
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTHelper:Lcom/motorola/multibluetooth/MultiBTAppHelper;

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateMediaRow(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method protected getIconResource(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    const/4 v2, 0x3

    .line 117
    iget v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTConnected:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 118
    iget v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    xor-int/lit8 v1, v1, 0x1

    .line 117
    if-eqz v1, :cond_1

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getIconResource(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    .line 124
    .local v0, "iconRes":I
    :goto_0
    return v0

    .line 121
    .end local v0    # "iconRes":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->getMultiBTIconResource(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    .restart local v0    # "iconRes":I
    goto :goto_0
.end method

.method protected getIconState(ILcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 3
    .param p1, "iconRes"    # I
    .param p2, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    const/4 v2, 0x3

    .line 130
    iget v1, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTConnected:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 131
    iget v1, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v1, v2, :cond_1

    iget-object v1, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    xor-int/lit8 v1, v1, 0x1

    .line 130
    if-eqz v1, :cond_1

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getIconState(ILcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    .line 140
    .local v0, "iconState":I
    :goto_0
    return v0

    .line 134
    .end local v0    # "iconState":I
    :cond_1
    const v1, 0x7f080356

    if-eq p1, v1, :cond_2

    .line 135
    const/4 v0, 0x1

    .restart local v0    # "iconState":I
    goto :goto_0

    .line 137
    .end local v0    # "iconState":I
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "iconState":I
    goto :goto_0
.end method

.method protected showH(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    .line 82
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTHelper:Lcom/motorola/multibluetooth/MultiBTAppHelper;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTConnected:Z

    .line 84
    iget-boolean v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mExpanded:Z

    invoke-direct {p0, v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateMultiBT(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method protected updateExpandedH(ZZ)V
    .locals 0
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->updateMultiBT(Z)V

    .line 156
    invoke-super {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandedH(ZZ)V

    .line 157
    return-void
.end method

.method protected updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    const/4 v4, 0x3

    .line 98
    invoke-super {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 99
    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 101
    .local v1, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-nez v1, :cond_1

    return-void

    .line 102
    :cond_1
    iget v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->mMultiBTConnected:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 103
    iget v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v2, v4, :cond_3

    iget-boolean v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    xor-int/lit8 v2, v2, 0x1

    .line 102
    if-eqz v2, :cond_3

    .line 104
    :cond_2
    return-void

    .line 107
    :cond_3
    invoke-direct {p0, p1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->getMultiBTIconResource(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    .line 108
    .local v0, "resIcon":I
    iget v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_4

    .line 109
    iput v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    .line 110
    iget-object v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 112
    :cond_4
    return-void
.end method
