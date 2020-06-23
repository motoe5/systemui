.class public Lcom/android/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/misc/SystemServicesProxy$1;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$2;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$H;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
    }
.end annotation


# static fields
.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field static final sRecentsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# instance fields
.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field mAssistComponent:Landroid/content/ComponentName;

.field mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDisplay:Landroid/view/Display;

.field mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field private final mGcRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field mHasFreeformWorkspaceSupport:Z

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mIsSafeMode:Z

.field mIwm:Landroid/view/IWindowManager;

.field mKgm:Landroid/app/KeyguardManager;

.field private final mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

.field mPm:Landroid/content/pm/PackageManager;

.field mRecentsPackage:Ljava/lang/String;

.field private mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field mUm:Landroid/os/UserManager;

.field private mWindowManager:Landroid/view/IWindowManager;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 122
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 123
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    .line 129
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-class v1, Lcom/android/systemui/pip/tv/PipMenuActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/misc/SystemServicesProxy$H;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mGcRunnable:Ljava/lang/Runnable;

    .line 174
    const-class v4, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/UiOffloadThread;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 223
    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 304
    new-instance v4, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw;-><init>(Ljava/lang/Object;)V

    .line 303
    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 310
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    .line 315
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    .line 316
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 317
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 319
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 320
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    .line 321
    new-instance v4, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 322
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    .line 323
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    .line 324
    const-string/jumbo v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    .line 325
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    .line 327
    const-string/jumbo v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 326
    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 328
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    .line 331
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.freeform_window_management"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 333
    const-string/jumbo v7, "enable_freeform_support"

    .line 332
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 330
    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    .line 334
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    .line 335
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    .line 338
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWindowManager:Landroid/view/IWindowManager;

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 343
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x1050002

    .line 344
    .local v3, "wId":I
    const v0, 0x1050001

    .line 345
    .local v0, "hId":I
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    .line 346
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    .line 349
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    .line 350
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 351
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    .line 355
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    .line 360
    const-class v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 361
    .local v2, "userInfoController":Lcom/android/systemui/statusbar/policy/UserInfoController;
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 369
    sget-object v4, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    .line 370
    const v5, 0x7f030036

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 371
    return-void

    .end local v0    # "hId":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "userInfoController":Lcom/android/systemui/statusbar/policy/UserInfoController;
    .end local v3    # "wId":I
    :cond_0
    move v4, v5

    .line 331
    goto :goto_0

    :cond_1
    move v4, v6

    .line 332
    goto :goto_0
.end method

.method private getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I

    .prologue
    .line 988
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 991
    :cond_0
    return-object p1
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1029
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1032
    :cond_0
    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    monitor-enter v1

    .line 378
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 381
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isFreeformStack(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 645
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHomeStack(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 624
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z
    .locals 4
    .param p1, "stackInfo"    # Landroid/app/ActivityManager$StackInfo;
    .param p2, "fullscreenStackInfo"    # Landroid/app/ActivityManager$StackInfo;

    .prologue
    .line 566
    if-eqz p1, :cond_1

    iget-boolean v1, p1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 567
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 568
    iget-boolean v2, p2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v2, :cond_3

    .line 569
    iget v2, p2, Landroid/app/ActivityManager$StackInfo;->position:I

    iget v3, p1, Landroid/app/ActivityManager$StackInfo;->position:I

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    .line 570
    .local v0, "isFullscreenStackOccludingg":Z
    :goto_1
    xor-int/lit8 v2, v0, 0x1

    and-int/2addr v1, v2

    .line 572
    .end local v0    # "isFullscreenStackOccludingg":Z
    :cond_0
    return v1

    .line 566
    :cond_1
    const/4 v1, 0x1

    .local v1, "stackVisibleNotOccluded":Z
    goto :goto_0

    .line 569
    .end local v1    # "stackVisibleNotOccluded":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFullscreenStackOccludingg":Z
    goto :goto_1

    .line 568
    .end local v0    # "isFullscreenStackOccludingg":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isFullscreenStackOccludingg":Z
    goto :goto_1
.end method

.method static synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_45713(Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V
    .locals 1
    .param p0, "resultListener"    # Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;

    .prologue
    .line 1213
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;->onStartActivityResult(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_46022(Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V
    .locals 1
    .param p0, "resultListener"    # Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;

    .prologue
    .line 1219
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;->onStartActivityResult(Z)V

    return-void
.end method


# virtual methods
.method public awakenDreamsAsync()V
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1361
    return-void
.end method

.method public cancelThumbnailTransition(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 718
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->cancelTaskThumbnailTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelWindowTransition(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 705
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->cancelTaskWindowTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public endProlongedAnimations()V
    .locals 2

    .prologue
    .line 1258
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 1259
    return-void

    .line 1262
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->endProlongedAnimations()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public gc()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mGcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 844
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_0

    return-object v3

    .line 848
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 851
    return-object v3
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, v1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 876
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedApplicationIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 944
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v0, p1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;
    .locals 2
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 890
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 912
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 913
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "activityLabel":Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, "applicationLabel":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, "badgedApplicationLabel":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v2    # "badgedApplicationLabel":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 915
    .end local v0    # "activityLabel":Ljava/lang/String;
    .end local v1    # "applicationLabel":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "activityLabel":Ljava/lang/String;
    goto :goto_0

    .line 920
    .restart local v1    # "applicationLabel":Ljava/lang/String;
    .restart local v2    # "badgedApplicationLabel":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 921
    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 920
    const v4, 0x7f1100d4

    invoke-virtual {p4, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "userId"    # I
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    .line 965
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 966
    .local v0, "tdIcon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 968
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    .line 967
    invoke-static {v1, p2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 970
    :cond_0
    if-eqz v0, :cond_1

    .line 971
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 973
    :cond_1
    return-object v2
.end method

.method public getCurrentUser()I
    .locals 1

    .prologue
    .line 1075
    iget v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    return v0
.end method

.method public getDeviceSmallestWidth()I
    .locals 3

    .prologue
    .line 1135
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1137
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1138
    .local v1, "smallestSizeRange":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1139
    .local v0, "largestSizeRange":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1140
    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1148
    .local v0, "displayRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    return-object v0

    .line 1150
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1151
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1152
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1153
    return-object v0
.end method

.method public getDockedDividerSize(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1284
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050075

    .line 1283
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1286
    .local v1, "dividerWindowWidth":I
    const v3, 0x1050074

    .line 1285
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1287
    .local v0, "dividerInsets":I
    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v1, v3

    return v3
.end method

.method public getProcessUser()I
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    return v0
.end method

.method public getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;
    .locals 11
    .param p1, "numLatestTasks"    # I
    .param p2, "userId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    .local p4, "quietProfileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    return-object v9

    .line 443
    :cond_0
    const/16 v5, 0xa

    .line 444
    .local v5, "minNumTasksToQuery":I
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 445
    .local v6, "numTasksToQuery":I
    const/16 v1, 0x3e

    .line 450
    .local v1, "flags":I
    if-eqz p3, :cond_1

    .line 451
    const/16 v1, 0x3f

    .line 453
    :cond_1
    const/4 v8, 0x0

    .line 455
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v9, v6, v1, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 461
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    if-nez v8, :cond_2

    .line 462
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    return-object v9

    .line 456
    .restart local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SystemServicesProxy"

    const-string/jumbo v10, "Failed to get recent tasks"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 465
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    const/4 v3, 0x1

    .line 466
    .local v3, "isFirstValidTask":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 467
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 468
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 474
    .local v7, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 475
    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 474
    if-eqz v9, :cond_4

    .line 476
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 482
    :cond_4
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    .line 483
    const/high16 v10, 0x800000

    .line 482
    if-ne v9, v10, :cond_7

    const/4 v2, 0x1

    .line 484
    .local v2, "isExcluded":Z
    :goto_2
    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p4, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 485
    .local v2, "isExcluded":Z
    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    xor-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_6

    .line 486
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 489
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 482
    .end local v2    # "isExcluded":Z
    :cond_7
    const/4 v2, 0x0

    .local v2, "isExcluded":Z
    goto :goto_2

    .line 492
    .end local v2    # "isExcluded":Z
    .end local v7    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    return-object v9
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 500
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 501
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 505
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 506
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    .line 507
    .local v1, "stackId":I
    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    .line 508
    return-object v2

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "i":I
    .end local v1    # "stackId":I
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    return-object v6
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outStableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    .line 1299
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :goto_0
    return-void

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 1120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1121
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTaskThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "reduced"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 726
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-object v7

    .line 737
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v6

    .line 738
    .local v6, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/app/ActivityManager;->ENABLE_TASK_SNAPSHOTS:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 743
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 745
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    .line 746
    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    move v2, v1

    .line 745
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 748
    const-string/jumbo v0, "SystemServicesProxy"

    const-string/jumbo v1, "Invalid screenshot detected from getTaskThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_1
    return-object v6
.end method

.method public getThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "reducedResolution"    # Z

    .prologue
    const/4 v9, 0x0

    .line 758
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v7, :cond_0

    .line 759
    new-instance v7, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    return-object v7

    .line 763
    :cond_0
    sget-boolean v7, Landroid/app/ActivityManager;->ENABLE_TASK_SNAPSHOTS:Z

    if-eqz v7, :cond_2

    .line 764
    const/4 v3, 0x0

    .line 766
    .local v3, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Landroid/app/IActivityManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 770
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :goto_0
    if-eqz v3, :cond_1

    .line 771
    invoke-static {v3}, Lcom/android/systemui/recents/model/ThumbnailData;->createFromTaskSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v6

    .line 798
    .local v6, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    :goto_1
    return-object v6

    .line 767
    .end local v6    # "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    .restart local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "SystemServicesProxy"

    const-string/jumbo v8, "Failed to retrieve snapshot"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 773
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_1
    new-instance v7, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    return-object v7

    .line 776
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v7, p1}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v4

    .line 777
    .local v4, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    if-nez v4, :cond_3

    .line 778
    new-instance v7, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    return-object v7

    .line 781
    :cond_3
    iget-object v5, v4, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 782
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, v4, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 783
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    if-nez v5, :cond_4

    if-eqz v0, :cond_4

    .line 784
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 785
    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 784
    invoke-static {v7, v9, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 787
    :cond_4
    if-eqz v0, :cond_5

    .line 789
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 793
    :cond_5
    :goto_2
    new-instance v6, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    .line 794
    .restart local v6    # "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    iput-object v5, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 795
    iget-object v7, v4, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v7, v7, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    iput v7, v6, Lcom/android/systemui/recents/model/ThumbnailData;->orientation:I

    .line 796
    iget-object v7, v6, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 790
    .end local v6    # "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public getWindowRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 1160
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1161
    .local v2, "windowRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v3, :cond_0

    return-object v2

    .line 1165
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 1166
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v1, :cond_1

    .line 1167
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 1169
    :cond_1
    if-eqz v1, :cond_2

    .line 1170
    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_2
    return-object v2

    .line 1172
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1175
    return-object v2

    .line 1174
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 1175
    return-object v2
.end method

.method public hasDockedTask()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 652
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v5, :cond_0

    return v7

    .line 654
    :cond_0
    const/4 v3, 0x0

    .line 656
    .local v3, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 661
    .end local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_0
    if-eqz v3, :cond_4

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v4

    .line 663
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 664
    .local v1, "hasUserTask":Z
    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .end local v1    # "hasUserTask":Z
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_3

    .line 665
    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v5, v5, v2

    if-eq v5, v4, :cond_1

    .line 668
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    iget-object v6, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v6, v6, v2

    invoke-virtual {v5, v4, v6}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v1

    .line 664
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 657
    .end local v2    # "i":I
    .end local v4    # "userId":I
    .restart local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 665
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    .restart local v2    # "i":I
    .restart local v4    # "userId":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "hasUserTask":Z
    goto :goto_2

    .line 668
    .end local v1    # "hasUserTask":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "hasUserTask":Z
    goto :goto_2

    .line 671
    .end local v1    # "hasUserTask":Z
    :cond_3
    return v1

    .line 673
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :cond_4
    return v7
.end method

.method public hasFreeformWorkspaceSupport()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    return v0
.end method

.method public hasSoftNavigationBar()Z
    .locals 2

    .prologue
    .line 681
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 685
    const/4 v1, 0x0

    return v1
.end method

.method public hasTransposedNavigationBar()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 693
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 694
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 695
    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isBlackListedActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 395
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeviceLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 1040
    const/4 v0, 0x0

    return v0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public isDreaming()Z
    .locals 3

    .prologue
    .line 1346
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Failed to query dream manager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1350
    const/4 v1, 0x0

    return v1
.end method

.method public isInSafeMode()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    return v0
.end method

.method public isRecentsActivityVisible()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    .locals 13
    .param p1, "isHomeStackVisible"    # Landroid/util/MutableBoolean;

    .prologue
    const/4 v10, 0x0

    .line 529
    iget-object v11, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v11, :cond_0

    return v10

    .line 532
    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v11}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v8

    .line 533
    .local v8, "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v2, 0x0

    .line 534
    .local v2, "homeStackInfo":Landroid/app/ActivityManager$StackInfo;
    const/4 v1, 0x0

    .line 535
    .local v1, "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    const/4 v5, 0x0

    .line 536
    .local v5, "recentsStackInfo":Landroid/app/ActivityManager$StackInfo;
    const/4 v4, 0x0

    .end local v1    # "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "homeStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v5    # "recentsStackInfo":Landroid/app/ActivityManager$StackInfo;
    .local v4, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 537
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$StackInfo;

    .line 538
    .local v7, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-nez v11, :cond_2

    .line 539
    move-object v2, v7

    .line 536
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 540
    :cond_2
    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 541
    move-object v1, v7

    .local v1, "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    goto :goto_1

    .line 542
    .end local v1    # "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_3
    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1

    .line 543
    move-object v5, v7

    .local v5, "recentsStackInfo":Landroid/app/ActivityManager$StackInfo;
    goto :goto_1

    .line 546
    .end local v5    # "recentsStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v7    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v3

    .line 548
    .local v3, "homeStackVisibleNotOccluded":Z
    invoke-direct {p0, v5, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v6

    .line 550
    .local v6, "recentsStackVisibleNotOccluded":Z
    if-eqz p1, :cond_5

    .line 551
    iput-boolean v3, p1, Landroid/util/MutableBoolean;->value:Z

    .line 553
    :cond_5
    if-eqz v5, :cond_7

    .line 554
    iget-object v9, v5, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 555
    :goto_2
    if-eqz v6, :cond_6

    if-eqz v9, :cond_6

    .line 556
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "com.android.systemui"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 555
    if-eqz v11, :cond_6

    .line 557
    sget-object v11, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 555
    :cond_6
    return v10

    .line 554
    :cond_7
    const/4 v9, 0x0

    .local v9, "topActivity":Landroid/content/ComponentName;
    goto :goto_2

    .line 558
    .end local v3    # "homeStackVisibleNotOccluded":Z
    .end local v4    # "i":I
    .end local v6    # "recentsStackVisibleNotOccluded":Z
    .end local v8    # "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    .end local v9    # "topActivity":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 561
    return v10
.end method

.method public isScreenPinningActive()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1099
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return v2

    .line 1102
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isSystemInSingleHandMode()Z
    .locals 3

    .prologue
    .line 1378
    const/4 v1, 0x0

    .line 1379
    .local v1, "isSystemInSingleHandMode":Z
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v2, :cond_0

    .line 1380
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWindowManager:Landroid/view/IWindowManager;

    .line 1383
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isSystemInSingleHandMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1387
    .end local v1    # "isSystemInSingleHandMode":Z
    :goto_0
    return v1

    .line 1384
    .restart local v1    # "isSystemInSingleHandMode":Z
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isSystemUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1067
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1090
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    return v0

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :cond_1
    return v0
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_11985(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_32857(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->removeTask(I)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_33078(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_44180(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v0, 0x0

    .line 1180
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    .line 1181
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1180
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_45468(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "finalOptions"    # Landroid/app/ActivityOptions;
    .param p3, "resultListener"    # Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "taskName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1210
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 1211
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-nez p2, :cond_1

    .line 1210
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 1212
    if-eqz p3, :cond_0

    .line 1213
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$2;

    invoke-direct {v2, p3}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    .line 1211
    :cond_1
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SystemServicesProxy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1217
    const/4 v3, 0x0

    aput-object p5, v2, v3

    const v3, 0x7f110428

    .line 1216
    invoke-virtual {p4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    if-eqz p3, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$3;

    invoke-direct {v2, p3}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_50522()V
    .locals 2

    .prologue
    .line 1356
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_50849(JI)V
    .locals 3
    .param p1, "newLastStackActiveTime"    # J
    .param p3, "currentUserId"    # I

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1367
    const-string/jumbo v1, "overview_last_stack_active_time"

    .line 1366
    invoke-static {v0, v1, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    return-void
.end method

.method public moveTaskToDockedStack(IILandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I
    .param p3, "initialBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 607
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 608
    return v7

    .line 612
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    .line 613
    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 612
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 614
    :catch_0
    move-exception v6

    .line 615
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 617
    return v7
.end method

.method public moveTaskToStack(II)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 808
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->positionTaskInStack(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 4
    .param p1, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "animStartedListener"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .prologue
    .line 1310
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowManager;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :goto_0
    return-void

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to override transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    .line 1272
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :goto_0
    return-void

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .prologue
    .line 1242
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 1244
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v2

    .line 1245
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1249
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 1255
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v3, "Failed to call registerTaskStackListener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1244
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeTask(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$7;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 823
    return-void
.end method

.method public requestKeyboardShortcuts(Landroid/content/Context;Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p3, "deviceId"    # I

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p2, p3}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 1293
    return-void
.end method

.method public sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 835
    return-void
.end method

.method public setPipVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 1334
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setPipVisibility(Z)V

    .line 1336
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1337
    const-string/jumbo v3, "pip_active"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1336
    :goto_0
    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    :goto_1
    return-void

    .line 1337
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setRecentsVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    return-void

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1182
    return-void
.end method

.method public startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "stackId"    # I
    .param p6, "resultListener"    # Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 1189
    return-void

    .line 1191
    :cond_0
    iget v0, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1194
    if-nez p4, :cond_1

    .line 1195
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    .line 1197
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 1204
    :cond_2
    :goto_0
    move-object v3, p4

    .line 1208
    .local v3, "finalOptions":Landroid/app/ActivityOptions;
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$6;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p6

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1223
    return-void

    .line 1198
    .end local v3    # "finalOptions":Landroid/app/ActivityOptions;
    :cond_3
    const/4 v0, -0x1

    if-eq p5, v0, :cond_2

    .line 1199
    if-nez p4, :cond_4

    .line 1200
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    .line 1202
    :cond_4
    invoke-virtual {p4, p5}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    goto :goto_0
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v1, 0x0

    .line 1227
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    return-void

    .line 1230
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 1231
    if-nez p1, :cond_1

    .line 1230
    :goto_0
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    .line 1235
    :goto_1
    return-void

    .line 1231
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startTaskInDockedMode(II)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 591
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    return v5

    .line 594
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 595
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setDockCreateMode(I)V

    .line 596
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 597
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    const/4 v2, 0x1

    return v2

    .line 599
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemServicesProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to dock task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with createMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    return v5
.end method

.method public updateOverviewLastStackActiveTimeAsync(JI)V
    .locals 3
    .param p1, "newLastStackActiveTime"    # J
    .param p3, "currentUserId"    # I

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1369
    return-void
.end method
