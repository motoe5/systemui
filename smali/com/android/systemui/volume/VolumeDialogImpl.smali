.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$1;,
        Lcom/android/systemui/volume/VolumeDialogImpl$2;,
        Lcom/android/systemui/volume/VolumeDialogImpl$3;,
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field protected final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field protected final mContext:Landroid/content/Context;

.field protected mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mDensity:I

.field protected mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field protected mDialogRowsView:Landroid/view/ViewGroup;

.field protected mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field protected mExpanded:Z

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHovering:Z

.field protected final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field protected final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowA11yStream:Z

.field private mShowFullZen:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field protected mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mWindow:Landroid/view/Window;

.field private mWindowType:I

.field private mZenFooter:Lcom/android/systemui/volume/ZenFooter;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

.field private final mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/Window;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ZenFooter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialog$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialogImpl;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Lcom/android/systemui/volume/SafetyWarningDialog;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "ss"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 120
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .line 142
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 1020
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1019
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 1089
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 1106
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 158
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 159
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 160
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 163
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 166
    const v0, 0x7f0600e2

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 167
    return-void
.end method

.method private addExistingRows()V
    .locals 8

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 350
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 352
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    iget v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    iget-boolean v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_0
    return-void
.end method

.method private addRow(IIIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 328
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 329
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 9
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z
    .param p5, "dynamic"    # Z

    .prologue
    const/4 v8, 0x1

    .line 333
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>()V

    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 334
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "rowSize":I
    if-le v6, v8, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .local v7, "viewSize":I
    if-le v7, v8, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    add-int/lit8 v3, v7, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    add-int/lit8 v2, v6, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 346
    .end local v6    # "rowSize":I
    .end local v7    # "viewSize":I
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private computeTimeoutH()I
    .locals 2

    .prologue
    const/16 v1, 0x1388

    .line 509
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->-get0(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    return v0

    .line 510
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    return v1

    .line 512
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_4

    :cond_3
    return v1

    .line 513
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const/16 v0, 0x5dc

    return v0

    .line 514
    :cond_5
    const/16 v0, 0xbb8

    return v0
.end method

.method private getConservativeCollapseDuration()J
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 395
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 396
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 398
    .local v0, "level":I
    :goto_0
    return v0

    .line 397
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    .restart local v0    # "level":I
    goto :goto_0

    .end local v0    # "level":I
    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4
    .param p1, "ss"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .prologue
    .line 971
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v1

    .line 975
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private getTransistion()Landroid/transition/AutoTransition;
    .locals 4

    .prologue
    .line 983
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    .line 984
    .local v0, "transition":Landroid/transition/AutoTransition;
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 985
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 986
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$12;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 1011
    return-object v0
.end method

.method private hasTouchFeature()Z
    .locals 2

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1016
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private initDialog()V
    .locals 12

    .prologue
    const v11, 0x7f080221

    const/16 v2, 0x30

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 191
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 193
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 194
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 195
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0, v9}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 208
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 209
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowType:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 210
    const/4 v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 211
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    const/16 v0, 0x31

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 213
    const v0, 0x7f0702e3

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 214
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 215
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 216
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0d0127

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->setContentView(I)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a02e0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0a02e2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 233
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    .line 234
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f0a02e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 237
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateWindowWidthH()V

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    .line 242
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    .line 243
    new-instance v5, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 242
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 258
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    const/4 v0, 0x3

    .line 260
    const v1, 0x7f080229

    const v2, 0x7f08022c

    .line 259
    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const v0, 0x7f08022f

    const v1, 0x7f080230

    .line 262
    invoke-direct {p0, v10, v0, v1, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 264
    const/4 v0, 0x4

    .line 265
    const v1, 0x7f080222

    const v2, 0x7f080223

    .line 264
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 267
    const v0, 0x7f080234

    const v1, 0x7f080234

    .line 266
    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 268
    const/4 v0, 0x6

    .line 269
    const v1, 0x7f080224

    const v2, 0x7f080224

    .line 268
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 271
    const v0, 0x7f080232

    const v1, 0x7f080233

    .line 270
    invoke-direct {p0, v9, v0, v1, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 272
    const/16 v0, 0xa

    invoke-direct {p0, v0, v11, v11, v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZ)V

    .line 278
    :cond_0
    :goto_1
    const v0, 0x7f0b0062

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a02e9

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenFooter;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerZenModePanel;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    .line 282
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 284
    return-void

    :cond_1
    move v0, v8

    .line 238
    goto/16 :goto_0

    .line 276
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    goto :goto_1
.end method

.method private initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 404
    iput p2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 405
    iput p3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    .line 406
    iput p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 407
    iput-boolean p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    .line 408
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0128

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 409
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 410
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const v1, 0x7f0a02e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 412
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 413
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const v1, 0x7f0a02e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 414
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 415
    iput-object v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 418
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    const v1, 0x7f0a02e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 443
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 444
    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 445
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    const/4 v4, 0x1

    .line 666
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v6

    .line 667
    .local v6, "animating":Z
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChangedH animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 669
    if-eqz v6, :cond_1

    .line 670
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPendingStateChanged:Z

    .line 671
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 675
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 676
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 677
    .local v1, "stream":I
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 678
    .local v10, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget-boolean v0, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v0, :cond_3

    .line 675
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 680
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_2

    .line 681
    const v2, 0x7f08022d

    const v3, 0x7f08022e

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_1

    .line 686
    .end local v1    # "stream":I
    .end local v10    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, v2, :cond_5

    .line 687
    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 688
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 689
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 691
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "row$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 692
    .local v8, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-virtual {p0, v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    .line 694
    .end local v8    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    .line 695
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    .line 926
    if-nez p1, :cond_1

    .line 927
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 929
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 930
    .local v0, "r":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 933
    .end local v0    # "r":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 936
    :cond_3
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 939
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 940
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v2, p1, :cond_0

    .line 941
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    .line 942
    return-void

    .line 945
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 628
    iget v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 629
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return v0

    .line 631
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 p2, 0x1

    .end local p2    # "isActive":Z
    :cond_2
    :goto_0
    return p2

    .line 632
    .restart local p2    # "isActive":Z
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    if-nez v1, :cond_1

    .line 631
    if-nez p2, :cond_1

    .line 633
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    move p2, v0

    goto :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 948
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    .line 949
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 948
    if-eqz v0, :cond_2

    .line 950
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 952
    return-void

    .line 954
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$11;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$11;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 963
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 965
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 967
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 968
    return-void

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 654
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 656
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 657
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 655
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 658
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 660
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 663
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_3
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 552
    .local v2, "diff":J
    iget-wide v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    const/4 v1, 0x1

    .line 553
    .local v1, "collapsing":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 554
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 556
    .local v0, "bottomMargin":I
    :goto_1
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v5, :cond_1

    .line 557
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bottomMargin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 559
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    :cond_1
    return-void

    .line 552
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "collapsing":Z
    goto :goto_0

    .line 555
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "bottomMargin":I
    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 592
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateExpandButtonH"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 594
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAttached()Z

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    .line 595
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v3, :cond_4

    const v2, 0x7f080226

    .line 597
    .local v2, "res":I
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hasTouchFeature()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 598
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 604
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v3, :cond_6

    .line 605
    const v3, 0x7f1100ea

    .line 604
    :goto_3
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 607
    .end local v2    # "res":I
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    if-eqz v3, :cond_2

    .line 608
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 609
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_2

    .line 611
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 613
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 615
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$9;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 622
    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationDuration:I

    int-to-long v6, v5

    .line 615
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 625
    .end local v0    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void

    :cond_3
    move v3, v4

    .line 594
    goto :goto_0

    .line 596
    :cond_4
    const v2, 0x7f080228

    .restart local v2    # "res":I
    goto :goto_1

    .line 601
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    const v5, 0x7f08022f

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 602
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 605
    :cond_6
    const v3, 0x7f1100eb

    goto :goto_3
.end method

.method private updateFooterH()V
    .locals 6

    .prologue
    .line 698
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateFooterH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v3, 0x1

    .line 700
    .local v3, "wasVisible":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-eqz v4, :cond_5

    .line 701
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    .line 700
    if-eqz v4, :cond_5

    .line 702
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-virtual {v4}, Lcom/android/systemui/tuner/TunerZenModePanel;->isEditing()Z

    move-result v4

    xor-int/lit8 v2, v4, 0x1

    .line 704
    :goto_1
    if-eq v3, v2, :cond_2

    .line 705
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 706
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v4, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 709
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-virtual {v4}, Lcom/android/systemui/tuner/TunerZenModePanel;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v1, 0x1

    .line 710
    .local v1, "fullWasVisible":Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowFullZen:Z

    if-eqz v4, :cond_7

    xor-int/lit8 v0, v2, 0x1

    .line 711
    :goto_3
    if-eq v1, v0, :cond_3

    .line 712
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-static {v4, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 713
    if-eqz v0, :cond_3

    .line 714
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v5, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->setZenState(I)V

    .line 715
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialogImpl$10;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$10;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->setDoneListener(Landroid/view/View$OnClickListener;)V

    .line 723
    :cond_3
    return-void

    .line 699
    .end local v1    # "fullWasVisible":Z
    .end local v3    # "wasVisible":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "wasVisible":Z
    goto :goto_0

    .line 700
    :cond_5
    const/4 v2, 0x0

    .local v2, "visible":Z
    goto :goto_1

    .line 709
    .end local v2    # "visible":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "fullWasVisible":Z
    goto :goto_2

    .line 710
    :cond_7
    const/4 v0, 0x0

    .local v0, "fullVisible":Z
    goto :goto_3
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V
    .locals 12
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 874
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v5, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 875
    iget v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    .line 876
    iget-boolean v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    if-eqz v5, :cond_1

    .line 877
    return-void

    .line 875
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 879
    :cond_1
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 880
    .local v3, "progress":I
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-static {v5, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 881
    .local v1, "level":I
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x1

    .line 882
    .local v4, "rowVisible":Z
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    sub-long/2addr v6, v8

    .line 883
    const-wide/16 v8, 0x3e8

    .line 882
    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    const/4 v0, 0x1

    .line 884
    .local v0, "inGracePeriod":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    .line 885
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 886
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "inGracePeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 888
    iget-wide v8, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    .line 887
    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 889
    return-void

    .line 881
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "rowVisible":Z
    goto :goto_1

    .line 882
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "inGracePeriod":Z
    goto :goto_2

    .line 891
    :cond_5
    if-ne p3, v1, :cond_6

    .line 892
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 893
    return-void

    .line 896
    :cond_6
    mul-int/lit8 v2, p3, 0x64

    .line 897
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_8

    .line 898
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    .line 900
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 901
    iget v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    if-ne v5, v2, :cond_7

    .line 902
    return-void

    .line 905
    :cond_7
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-nez v5, :cond_9

    .line 906
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    const-string/jumbo v6, "progress"

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 907
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 912
    :goto_3
    iput v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    .line 913
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 914
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 923
    :cond_8
    :goto_4
    return-void

    .line 909
    :cond_9
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 910
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_3

    .line 917
    :cond_a
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_b

    .line 918
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 920
    :cond_b
    iget-object v5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_4
.end method

.method private updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 862
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 865
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 867
    .local v0, "tint":Landroid/content/res/ColorStateList;
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_2

    return-void

    .line 866
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .restart local v0    # "tint":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 868
    :cond_2
    iput-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    .line 869
    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 870
    iget-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 871
    return-void
.end method

.method private updateWindowWidthH()V
    .locals 7

    .prologue
    .line 298
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 299
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 300
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWindowWidth dm.w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 302
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 303
    const v5, 0x7f0702e0

    .line 302
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 304
    .local v2, "max":I
    if-le v3, v2, :cond_1

    .line 305
    move v3, v2

    .line 307
    :cond_1
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 308
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 188
    return-void
.end method

.method protected dismissH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 522
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 523
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v1, :cond_1

    return-void

    .line 524
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 525
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogImpl$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    .line 531
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 534
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 535
    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 537
    const v3, 0x7f11051f

    .line 536
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 540
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 541
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 542
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_4

    .line 544
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SafetyWarning dismissed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v2

    .line 548
    return-void

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 372
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 373
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v2, p1, :cond_0

    return-object v0

    .line 375
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    .prologue
    .line 363
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 364
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    iget v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 365
    return-object v0

    .line 368
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-object v2
.end method

.method protected getIconResource(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 13
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    .line 826
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget v12, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 827
    .local v9, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget v11, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const/4 v4, 0x1

    .line 828
    .local v4, "isRingStream":Z
    :goto_0
    iget v11, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v6, 0x1

    .line 829
    .local v6, "isSystemStream":Z
    :goto_1
    iget v11, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    const/4 v1, 0x1

    .line 830
    .local v1, "isAlarmStream":Z
    :goto_2
    iget v11, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    const/4 v2, 0x1

    .line 831
    .local v2, "isMusicStream":Z
    :goto_3
    if-eqz v4, :cond_5

    .line 832
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v5, 0x1

    .line 833
    .local v5, "isRingVibrate":Z
    :goto_4
    if-eqz v4, :cond_7

    .line 834
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v11, :cond_6

    const/4 v3, 0x1

    .line 835
    .local v3, "isRingSilent":Z
    :goto_5
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    const/4 v7, 0x1

    .line 836
    .local v7, "isZenAlarms":Z
    :goto_6
    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    const/4 v8, 0x1

    .line 837
    .local v8, "isZenNone":Z
    :goto_7
    if-eqz v7, :cond_b

    if-nez v4, :cond_a

    move v10, v6

    .line 841
    :goto_8
    if-eqz v5, :cond_e

    const v0, 0x7f080231

    .line 848
    .local v0, "iconRes":I
    :goto_9
    return v0

    .line 827
    .end local v0    # "iconRes":I
    .end local v1    # "isAlarmStream":Z
    .end local v2    # "isMusicStream":Z
    .end local v3    # "isRingSilent":Z
    .end local v4    # "isRingStream":Z
    .end local v5    # "isRingVibrate":Z
    .end local v6    # "isSystemStream":Z
    .end local v7    # "isZenAlarms":Z
    .end local v8    # "isZenNone":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "isRingStream":Z
    goto :goto_0

    .line 828
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isSystemStream":Z
    goto :goto_1

    .line 829
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isAlarmStream":Z
    goto :goto_2

    .line 830
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isMusicStream":Z
    goto :goto_3

    .line 832
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "isRingVibrate":Z
    goto :goto_4

    .line 831
    .end local v5    # "isRingVibrate":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "isRingVibrate":Z
    goto :goto_4

    .line 834
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isRingSilent":Z
    goto :goto_5

    .line 833
    .end local v3    # "isRingSilent":Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "isRingSilent":Z
    goto :goto_5

    .line 835
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "isZenAlarms":Z
    goto :goto_6

    .line 836
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "isZenNone":Z
    goto :goto_7

    .line 837
    :cond_a
    const/4 v10, 0x1

    .local v10, "zenMuted":Z
    goto :goto_8

    .line 838
    .end local v10    # "zenMuted":Z
    :cond_b
    if-eqz v8, :cond_d

    if-nez v4, :cond_c

    if-nez v6, :cond_c

    if-nez v1, :cond_c

    move v10, v2

    .local v10, "zenMuted":Z
    goto :goto_8

    .end local v10    # "zenMuted":Z
    :cond_c
    const/4 v10, 0x1

    .local v10, "zenMuted":Z
    goto :goto_8

    .line 839
    .end local v10    # "zenMuted":Z
    :cond_d
    const/4 v10, 0x0

    .restart local v10    # "zenMuted":Z
    goto :goto_8

    .line 842
    .end local v10    # "zenMuted":Z
    :cond_e
    if-nez v3, :cond_f

    if-eqz v10, :cond_10

    :cond_f
    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    .restart local v0    # "iconRes":I
    goto :goto_9

    .line 843
    .end local v0    # "iconRes":I
    :cond_10
    iget-boolean v11, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v11, :cond_12

    .line 844
    iget-boolean v11, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v11, :cond_11

    const v0, 0x7f08022b

    .restart local v0    # "iconRes":I
    goto :goto_9

    .line 845
    .end local v0    # "iconRes":I
    :cond_11
    const v0, 0x7f08022a

    .restart local v0    # "iconRes":I
    goto :goto_9

    .line 846
    .end local v0    # "iconRes":I
    :cond_12
    iget-boolean v11, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v11, :cond_13

    iget v11, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v11, :cond_13

    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .restart local v0    # "iconRes":I
    goto :goto_9

    .line 847
    .end local v0    # "iconRes":I
    :cond_13
    iget-boolean v11, v9, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v11, :cond_14

    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .restart local v0    # "iconRes":I
    goto :goto_9

    .end local v0    # "iconRes":I
    :cond_14
    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    .restart local v0    # "iconRes":I
    goto :goto_9
.end method

.method protected getIconState(ILcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p1, "iconRes"    # I
    .param p2, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    .line 852
    const v0, 0x7f080231

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    .line 853
    :cond_0
    const v0, 0x7f08022b

    if-eq p1, v0, :cond_1

    iget v0, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    if-ne p1, v0, :cond_2

    .line 854
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 855
    :cond_2
    const v0, 0x7f08022a

    if-eq p1, v0, :cond_3

    iget v0, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    if-ne p1, v0, :cond_4

    .line 856
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 857
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "callback"    # Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .prologue
    .line 170
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .line 171
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowType:I

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 179
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sysui_show_full_zen"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 182
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDensity:I

    .line 183
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 288
    const-string/jumbo v1, "sysui_show_full_zen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowFullZen:Z

    .line 291
    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 500
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 501
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 502
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 503
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 502
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 503
    int-to-long v4, v0

    .line 502
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 504
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    .line 506
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 317
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 318
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 319
    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 323
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 324
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 325
    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 488
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->removeMessages(I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 492
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    .line 493
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 494
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 497
    return-void
.end method

.method protected updateExpandedH(ZZ)V
    .locals 4
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z

    .prologue
    .line 575
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 576
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpanded:Z

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isAttached()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mExpandButtonAnimationRunning:Z

    .line 578
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExpandedH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateFooterH()V

    .line 581
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    .line 583
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    if-nez p2, :cond_2

    .line 584
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 585
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTransistion()Landroid/transition/AutoTransition;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 587
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 589
    return-void
.end method

.method protected updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 6
    .param p1, "activeRow"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    .line 637
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateRowsH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v4, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 642
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "row$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 643
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    .line 644
    .local v0, "isActive":Z
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    move-result v3

    .line 645
    .local v3, "shouldBeVisible":Z
    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 646
    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 647
    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    goto :goto_0

    .line 643
    .end local v0    # "isActive":Z
    .end local v3    # "shouldBeVisible":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isActive":Z
    goto :goto_1

    .line 651
    .end local v0    # "isActive":Z
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    :cond_4
    return-void
.end method

.method protected updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 25
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .prologue
    .line 726
    sget-boolean v19, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "updateVolumeRowH s="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    return-void

    .line 728
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 729
    .local v16, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-nez v16, :cond_2

    return-void

    .line 730
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 731
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 732
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 734
    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 735
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    .line 737
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/4 v6, 0x1

    .line 738
    .local v6, "isA11yStream":Z
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 739
    .local v10, "isRingStream":Z
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/4 v12, 0x1

    .line 740
    .local v12, "isSystemStream":Z
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/4 v7, 0x1

    .line 741
    .local v7, "isAlarmStream":Z
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/4 v8, 0x1

    .line 742
    .local v8, "isMusicStream":Z
    :goto_4
    if-eqz v10, :cond_f

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/4 v11, 0x1

    .line 744
    .local v11, "isRingVibrate":Z
    :goto_5
    if-eqz v10, :cond_11

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v19, v0

    if-nez v19, :cond_10

    const/4 v9, 0x1

    .line 746
    .local v9, "isRingSilent":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/4 v13, 0x1

    .line 747
    .local v13, "isZenAlarms":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    const/4 v14, 0x1

    .line 748
    .local v14, "isZenNone":Z
    :goto_8
    if-eqz v13, :cond_15

    if-nez v10, :cond_14

    move/from16 v18, v12

    .line 753
    :goto_9
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    move/from16 v19, v0

    mul-int/lit8 v15, v19, 0x64

    .line 754
    .local v15, "max":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getMax()I

    move-result v19

    move/from16 v0, v19

    if-eq v15, v0, :cond_5

    .line 755
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->setMax(I)V

    .line 759
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 763
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    :cond_6
    xor-int/lit8 v4, v18, 0x1

    .line 764
    :goto_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 765
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    if-eqz v4, :cond_19

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_b
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 766
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getIconResource(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    .line 767
    .local v5, "iconRes":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_8

    .line 768
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    move/from16 v19, v0

    if-eqz v19, :cond_7

    if-eqz v11, :cond_7

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate()V

    .line 771
    :cond_7
    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    .line 772
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 774
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getIconState(ILcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    .line 775
    if-eqz v4, :cond_23

    .line 776
    if-eqz v10, :cond_1e

    .line 777
    if-eqz v11, :cond_1a

    .line 778
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 780
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 779
    const v22, 0x7f110524

    .line 778
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 816
    :goto_c
    xor-int/lit8 v3, v18, 0x1

    .line 817
    .local v3, "enableSlider":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_24

    if-nez v10, :cond_24

    xor-int/lit8 v19, v18, 0x1

    if-eqz v19, :cond_24

    const/16 v17, 0x0

    .line 819
    .local v17, "vlevel":I
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V

    .line 820
    return-void

    .line 737
    .end local v3    # "enableSlider":Z
    .end local v5    # "iconRes":I
    .end local v6    # "isA11yStream":Z
    .end local v7    # "isAlarmStream":Z
    .end local v8    # "isMusicStream":Z
    .end local v9    # "isRingSilent":Z
    .end local v10    # "isRingStream":Z
    .end local v11    # "isRingVibrate":Z
    .end local v12    # "isSystemStream":Z
    .end local v13    # "isZenAlarms":Z
    .end local v14    # "isZenNone":Z
    .end local v15    # "max":I
    .end local v17    # "vlevel":I
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "isA11yStream":Z
    goto/16 :goto_0

    .line 738
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "isRingStream":Z
    goto/16 :goto_1

    .line 739
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "isSystemStream":Z
    goto/16 :goto_2

    .line 740
    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "isAlarmStream":Z
    goto/16 :goto_3

    .line 741
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "isMusicStream":Z
    goto/16 :goto_4

    .line 743
    :cond_e
    const/4 v11, 0x0

    .restart local v11    # "isRingVibrate":Z
    goto/16 :goto_5

    .line 742
    .end local v11    # "isRingVibrate":Z
    :cond_f
    const/4 v11, 0x0

    .restart local v11    # "isRingVibrate":Z
    goto/16 :goto_5

    .line 745
    :cond_10
    const/4 v9, 0x0

    .restart local v9    # "isRingSilent":Z
    goto/16 :goto_6

    .line 744
    .end local v9    # "isRingSilent":Z
    :cond_11
    const/4 v9, 0x0

    .restart local v9    # "isRingSilent":Z
    goto/16 :goto_6

    .line 746
    :cond_12
    const/4 v13, 0x0

    .restart local v13    # "isZenAlarms":Z
    goto/16 :goto_7

    .line 747
    :cond_13
    const/4 v14, 0x0

    .restart local v14    # "isZenNone":Z
    goto/16 :goto_8

    .line 748
    :cond_14
    const/16 v18, 0x1

    .local v18, "zenMuted":Z
    goto/16 :goto_9

    .line 749
    .end local v18    # "zenMuted":Z
    :cond_15
    if-eqz v14, :cond_17

    if-nez v10, :cond_16

    if-nez v12, :cond_16

    if-nez v7, :cond_16

    move/from16 v18, v8

    .local v18, "zenMuted":Z
    goto/16 :goto_9

    .end local v18    # "zenMuted":Z
    :cond_16
    const/16 v18, 0x1

    .local v18, "zenMuted":Z
    goto/16 :goto_9

    .line 750
    .end local v18    # "zenMuted":Z
    :cond_17
    const/16 v18, 0x0

    .restart local v18    # "zenMuted":Z
    goto/16 :goto_9

    .line 763
    .end local v18    # "zenMuted":Z
    .restart local v15    # "max":I
    :cond_18
    const/4 v4, 0x0

    .local v4, "iconEnabled":Z
    goto/16 :goto_a

    .line 765
    .end local v4    # "iconEnabled":Z
    :cond_19
    const/high16 v19, 0x3f000000    # 0.5f

    goto/16 :goto_b

    .line 782
    .restart local v5    # "iconRes":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 783
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 785
    const v19, 0x7f110526

    .line 783
    :goto_e
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 783
    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 786
    :cond_1b
    const v19, 0x7f110525

    goto :goto_e

    .line 789
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 790
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    .line 791
    const v19, 0x7f110523

    .line 789
    :goto_f
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 793
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 789
    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 792
    :cond_1d
    const v19, 0x7f110522

    goto :goto_f

    .line 796
    :cond_1e
    if-eqz v6, :cond_1f

    .line 797
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 799
    :cond_1f
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    move/from16 v19, v0

    if-nez v19, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v19, v0

    if-nez v19, :cond_21

    .line 800
    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 802
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 801
    const v22, 0x7f110524

    .line 800
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 804
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 805
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    .line 806
    const v19, 0x7f110523

    .line 804
    :goto_10
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 808
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 804
    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 807
    :cond_22
    const v19, 0x7f110522

    goto :goto_10

    .line 812
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 818
    .restart local v3    # "enableSlider":Z
    :cond_24
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    move/from16 v17, v0

    .restart local v17    # "vlevel":I
    goto/16 :goto_d
.end method
